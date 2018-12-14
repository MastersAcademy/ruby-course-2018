require 'erb'
require 'redis'

REDIS ||= Redis.new

class BaseController
  attr_reader :request

  def initialize(request)
    @request = request
  end

  def new_game
    @title = "Please, create your pet!!!"
    build_response render_new_game
  end

  def start_game
    REDIS.set("pet_status", "CurrentGame")
    PetController.new(request).create
  end

  def menu
    if REDIS.get("pet_status") != "GameOver"
      if request.params.include?('action')
        command = request.params.first[1]
        if PetController.respond_to?(command)
          PetController.send(command)
        else
          puts 'oops'
          REDIS.set("pet_status", "Your pet does not know this command")
        end
      end
      @name = REDIS.get("pet_name")
      @kind = REDIS.get("pet_kind")
      @mood = REDIS.get("pet_mood")
      @health = REDIS.get("pet_health")
      @energy = REDIS.get("pet_energy")
      @status = REDIS.get("pet_status")
      build_response render_menu
    else
      REDIS.flushall
      redirect_to "/"
    end
  end

  private

  def render_new_game
    template = File.read('app/views/base/new_game.html.erb')
    ERB.new(template).result(binding)
  end

  def render_start_game
    template = File.read('app/views/pet/show.html.erb')
    ERB.new(template).result(binding)
  end

  def render_menu
    template = File.read('app/views/pet/menu.html.erb')
    ERB.new(template).result(binding)
  end

  def build_response(body, status: 200)
    [status, { "Content-Type" => "text/html" }, [body]]
  end

  def redirect_to(uri)
    [302, { "Location" => uri }, []]
  end
  
  def params
    request.params
  end
end
