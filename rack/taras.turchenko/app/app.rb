# frozen_string_literal: true

require_relative './shared'
require_relative './models/tamagotchi'

# Entry app
class App
  API = {
    '/' => :index,
    '/health' => :tamagotchi_health,
    '/actions/to-feed' => :feed_tamagotchi,
    '/actions/put-to-bad' => :put_to_bad_tamagotchi,
    '/actions/play-game' => :play_in_game_with_tamagotchi
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request = Rack::Request.new env
    request_path = request.path
    return not_found_page(request_path) unless API.key? request_path

    send API[request_path]
  end

  def index
    initialize_tamagotchi
    content = File.read './app/views/index.html'
    Http.format_response :ok, :html, content
  end

  def initialize_tamagotchi
    self.tamagotchi = Tamagotchi.new
  end

  def tamagotchi_health
    health = tamagotchi.decrease_health.to_s
    health = tamagotchi.dead? ? 'dead' : health
    Http.format_response :ok, :plain_text, health
  end

  def feed_tamagotchi
    request_tamagotchi_action(:to_feed)
  end

  def request_tamagotchi_action(action)
    tamagotchi.send(action)
    Http.empty_response :ok
  end

  def put_to_bad_tamagotchi
    request_tamagotchi_action(:put_to_bad)
  end

  def play_in_game_with_tamagotchi
    request_tamagotchi_action(:play_game)
  end

  def not_found_page(requested_path)
    body = "Not found route #{requested_path}"
    Http.format_response :not_found, :html, body
  end
end
