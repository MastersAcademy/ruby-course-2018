app_files = File.expand_path('../app/**/*.rb', __FILE__)
Dir.glob(app_files).each { |file| require(file) }

class Application
  def call(env)
    request = Rack::Request.new(env)
    Router.new.find_pet_action(request)
  end
end
