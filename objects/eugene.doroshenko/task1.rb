#Є класс MarioGame, він наведений в файлі mario_game.rb. В ньому є методи які змінюють вхідні параметри (change_level, change_background наприклад). Також до цього класу треба додати методи які будуть виводити змінні класу. Наприклад вже є реалізований метод show_count_of_enemies, який виводить значення змінної @enemies. Зробити такі ж самі методи і для інших параметрів.

#Задача заключається в тому, щоб реалізуати додатковий модуль який буде містити ці всі методи і підключить його до класу MarioGame.

#Тобто в кінці має бути щось таке:

#class MarioGame
#  include SomeModule
#end
#Далі зробити класс для іншої гри з будь якою іншою назвою, і та гра має містити свої перстональні методи, і так само методи які використовує MarioGame. Тут треба реалізувати не наслідуванням а саме підключенням модуля із необхідними методами.

class MarioGame
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

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
    "Count of enemies on level is: #{@enemies}"
  end
end
