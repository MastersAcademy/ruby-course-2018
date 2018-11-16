#Є класс MarioGame, він наведений в файлі mario_game.rb. В ньому є методи які змінюють вхідні параметри (change_level, change_background наприклад). Також до цього класу треба додати методи які будуть виводити змінні класу. Наприклад вже є реалізований метод show_count_of_enemies, який виводить значення змінної @enemies. Зробити такі ж самі методи і для інших параметрів.

#Задача заключається в тому, щоб реалізуати додатковий модуль який буде містити ці всі методи і підключить його до класу MarioGame.

#Тобто в кінці має бути щось таке:

#class MarioGame
#  include SomeModule
#end
#Далі зробити класс для іншої гри з будь якою іншою назвою, і та гра має містити свої перстональні методи, і так само методи які використовує MarioGame. Тут треба реалізувати не наслідуванням а саме підключенням модуля із необхідними методами.

module GamesMethods
  
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

  def show_count_of_enemies
    puts "Count of enemies on level is: #{@enemies}"
  end

  def show_enemy_speed
    puts "Anemy speed is: #{@speed_enemies}"
  end

  def show_level
    puts "Level #{@level_number}"
  end

  def show_background
    puts "Level background #{@background}"
  end

  def final_level
    puts 'Sorry, Mario, but your princess in another castle'    
  end

end

# end of module MariomMethods

#============================================================================

#class MarioGame
class MarioGame
  
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number
  include GamesMethods

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  lvl_bground = 1
  cnt_of_enems = 15
  spd_enems = 1 
  lvl_number = 1

  TanksGame.new(lvl_bground, cnt_of_enems, spd_enems, lvl_number)

end


#end of MarioGame class
#==========================================
#enother game

class TanksGame

  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number, :level_map

  include GamesMethods

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, level_map)
    @lev_map = level_map
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def level_map (new_level_map)
    @lev_map = new_count_of_enemies
  end

  def show_level_map
    "Level map is: #{@lev_map}"
  end

  lvl_bground = 1
  cnt_of_enems = 15
  spd_enems = 1 
  lvl_number = 1
  lvl_map = 1

  TanksGame.new(lvl_bground, cnt_of_enems, spd_enems, lvl_number, lvl_map)

end
