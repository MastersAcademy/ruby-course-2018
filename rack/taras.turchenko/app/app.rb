require_relative './shared'

class App
  ROUTES = {
    '/hello' => -> do
      content = File.read './app/views/index.html'
      Http.format_response :ok, :html, content
    end
  }.freeze

  def call(env)
    request = Rack::Request.new env
    request_path = request.path
    unless ROUTES.key? request_path
      body = "Not found route #{request_path}"
      return Http.format_response :not_found, :html, body
    end
    ROUTES[request_path].call
  end

end