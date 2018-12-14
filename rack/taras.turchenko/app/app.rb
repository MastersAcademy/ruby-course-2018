require_relative './shared'
require_relative './models/tamagotchi'

class App
  API = {
    '/' => ->(context) do
      context.initialize_tamagotchi
      content = File.read './app/views/index.html'
      Http.format_response :ok, :html, content
    end,

    '/health' => ->(context) do
      health = context.tamagotchi.dead? ? 'dead' : context.tamagotchi.health.to_s
      Http.format_response :ok, :plain_text, health
    end,

    '/actions/to-feed' => ->(context) do
      context.request_tamagotchi_action(:to_feed)
    end,
    '/actions/put-to-bad' => ->(context) do
      context.request_tamagotchi_action(:put_to_bad)
    end,
    '/actions/play-game' => ->(context) do
      context.request_tamagotchi_action(:play_game)
    end
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request = Rack::Request.new env
    request_path = request.path
    return not_found_page(request_path) unless API.key? request_path
    API[request_path].call self
  end

  def not_found_page(requested_path)
    body = "Not found route #{requested_path}"
    Http.format_response :not_found, :html, body
  end

  def initialize_tamagotchi
    self.tamagotchi = Tamagotchi.new
  end

  def request_tamagotchi_action(action)

    tamagotchi.send(action)
    Http.empty_response :ok
  end
end
