require_relative './mario_game'

class MarioGame
	def self.add_final_screen
		last_instance = ObjectSpace.each_object(self).to_a.first
		last_instance.instance_eval do
			def show_final_screen
				"My congratulations! It's end of the game"
			end
		end
	end
end

mario1 = MarioGame.new('Overworld', 21, 10, '1-1')
mario2 = MarioGame.new('Underground', 23, 14, '1-2')
mario3 = MarioGame.new('Athletic', 33, 16, '1-3')
mario4 = MarioGame.new('Castle', 24, 11, '1-4')
mario5 = MarioGame.new('Overworld', 19, 15, '2-1')
mario6 = MarioGame.new('Underwater', 31, 13, '2-2')
mario7 = MarioGame.new('Athletic', 28, 19, '2-3')
mario8 = MarioGame.new('Castle', 23, 17, '2-4')
mario9 = MarioGame.new('Overworld', 35, 13, '3-1')
mario10 = MarioGame.new('Overworld', 24, 16, '3-2')
mario11 = MarioGame.new('Athletic', 36, 11, '3-3')
mario12 = MarioGame.new('Castle', 29, 16, '3-4')
mario13 = MarioGame.new('Overworld', 28, 13, '4-1')
mario14 = MarioGame.new('Underground', 32, 19, '4-2')
mario15 = MarioGame.new('Athletic', 26, 13, '4-3')
mario16 = MarioGame.new('Castle', 24, 14, '4-4')
mario17 = MarioGame.new('Overworld', 26, 12, '5-1')
mario18 = MarioGame.new('Overworld', 29, 15, '5-2')
mario19 = MarioGame.new('Athletic', 25, 16, '5-3')
mario20 = MarioGame.new('Castle', 21, 17, '5-4')

MarioGame.add_final_screen
puts mario20.show_final_screen