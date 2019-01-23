module ShowYourStats
    def show_level
      "Your level is #{@level_number}"
    end

    def show_background
      "Background color is #{@background}"
    end

    def show_count_of_enemies
      "Count of enemies on level is: #{@enemies}"
    end

    def show_count_of_ammunition
      "Count of ammunition is: #{@ammo}"
    end

    def show_altitude
      "Your altitude is: #{@alt}"
    end

    def show_fuel
      "Your fuel level is: #{@fuel}"
    end
end

class AirFury
  attr_accessor :level_background, :count_of_enemies, :ammunition, :level_number, :altitude , :fuel

  def initialize(level_background, count_of_enemies, ammunition, level_number, altitude , fuel)
    @background = level_background
    @enemies = count_of_enemies
    @ammo = ammunition
    @level_number = level_number
    @alt = altitude
    @fuel = fuel
  end

  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @background = new_background_color
  end

  def change_count_of_enemies(new_count_of_enemies)
    @enemies = new_count_of_enemies
  end

  def change_count_of_ammunition(new_count_of_ammunition)
    @ammo = new_count_of_ammunition
  end

  def change_altitude(new_altitude)
    @alt = new_altitude
  end

  def change_count_of_fuel(new_count_of_fuel)
    @fuel = new_count_of_fuel
  end
end