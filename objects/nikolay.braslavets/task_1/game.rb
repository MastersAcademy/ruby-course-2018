module Game
  module ChangeHelper
    def change_level(new_level_number)
      @level_number = new_level_number
    end

    def change_background(new_background_color)
      @background = new_background_color
    end

    def change_speed_enemies(new_speed_enemies)
      @speed_enemies = new_speed_enemies
    end

    def change_counf_of_enemies(new_count_of_enemies)
      @enemies = new_count_of_enemies
    end
  end

  module ShowHelper
    def show_count_of_enemies
      puts "Count of enemies on level is: #{@enemies}"
    end

    def show_speed_enemies
      puts "Speed of enemies on level is: #{@speed_enemies} mPh"
    end

    def show_background_color
      puts "Background color is: #{@background}"
    end

    def show_level
      puts "You in level number: #{@level_number}"
    end
  end
end
