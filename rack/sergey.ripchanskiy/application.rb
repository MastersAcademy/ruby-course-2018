app_files = File.expand_path('../app/**/*.rb', __FILE__)
Dir.glob(app_files).each { |file| require(file) }

class Application
  def call(env)
    request = Rack::Request.new(env)
    find_pet_action(request)
  end

  def find_pet_action(request)
    if request.path == '/'
      BaseController.new(request).new_game
    elsif request.path == '/start_game'
      BaseController.new(request).start_game
    else request.path == '/dogs/menu'
      BaseController.new(request).menu
    end
  end
end
