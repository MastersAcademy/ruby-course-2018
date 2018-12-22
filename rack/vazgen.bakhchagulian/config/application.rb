# frozen_string_literal: true

require_relative 'routes'
Dir[File.join('app', '**', '*.rb')].sort.each { |f| require "./#{f}" }

class Application
  attr_reader :env

  def self.call(env)
    new(env).call_action
  end

  def initialize
    @env = env
  end

  def call_action
    Object.const_get(controller_name).new.send(current_route[:action])
  end

  private

  def current_route
    @current_route ||= fetch_route
  end

  def fetch_route
    ROUTES[route_key] || ROUTES[:not_found]
  end

  def controller_name
    current_route[:controller].to_s.split('_').collect(&:capitalize).join
  end

  def route_key
    { request: env['REQUEST_METHOD'], path: env['REQUEST_PATH']}
  end
end