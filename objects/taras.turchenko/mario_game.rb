require_relative './task_1/base_game'

class MarioGame
	attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

	def initialize(level_background, count_of_enemies, speed_enemies, level_number)
		self.level_background = level_background
		self.count_of_enemies = count_of_enemies
		self.speed_enemies = speed_enemies
		self.level_number = level_number
	end

	def change_level(new_level_number)
		self.level_number = new_level_number
	end

	def change_background(new_background_color)
		self.level_background = new_background_color
	end

	def change_speed_enemies(new_speed_enemies)
		self.speed_enemies = new_speed_enemies
	end

	def change_counf_of_enemies(new_count_of_enemies)
		self.count_of_enemies = new_count_of_enemies
	end

	def show_count_of_enemies
		"Count of enemies on level is: #{count_of_enemies}"
	end
end
