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
    return not_found_page(request_path) unless ROUTES.key? request_path
    ROUTES[request_path].call
  end

  def not_found_page(requested_path)
    body = "Not found route #{requested_path}"
    Http.format_response :not_found, :html, body
  end
end