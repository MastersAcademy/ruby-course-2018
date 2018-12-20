class Router
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