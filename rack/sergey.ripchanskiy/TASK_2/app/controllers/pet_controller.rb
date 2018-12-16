require_relative './base_controller.rb'

class PetController<BaseController

  def create
    pet = Pet.new(name: params['pet']['name'], kind: params['kind']['name'])
    REDIS.set("pet_name", "#{pet.name}")
    REDIS.set("pet_kind", "#{pet.kind}")
    REDIS.set("pet_mood", "#{pet.mood}")
    REDIS.set("pet_health", "#{pet.health}")
    REDIS.set("pet_energy", "#{pet.energy}")
    REDIS.set("pet_status", "Your pet is waiting for your commands")
    @name = REDIS.get("pet_name")
    
    @kind = REDIS.get("pet_kind")
    @pet = pet
    build_response render_start_game
  end

  def self.walk
    REDIS.set("pet_status", "You are walking with your pet")
    @energy = REDIS.get("pet_energy").to_i
    @energy -= 1
      if empty_energy?
        @health = REDIS.get("pet_health").to_i
        @health -= 1
        REDIS.set("pet_health", "#{@health}")
        if die?
          REDIS.set("pet_status", "GameOver")
        else
          REDIS.set("pet_energy", "3")
          REDIS.set("pet_status", "Your left one life")
          REDIS.set("pet_health", "#{@health}")
        end
      else
        REDIS.set("pet_energy", "#{@energy}")
      end
  end

  def self.eat
    @energy = REDIS.get("pet_energy").to_i
    @energy += 1
    REDIS.set("pet_energy", "#{@energy}")
    @mood = REDIS.get("pet_mood").to_i
    @mood += 1
    REDIS.set("pet_mood", "#{@mood}")
    REDIS.set("pet_status", "Tasty!!! Omnomnom")
  end

  def self.sleep
    @health = REDIS.get("pet_health").to_i
    @health += 1
    REDIS.set("pet_health", "#{@health}")
    REDIS.set("pet_status", "Sleeping Time")
  end

  def self.empty_energy?
    @energy < 1
  end

  def self.die?
    health = REDIS.get("pet_health").to_i
    health < 1
  end
end
