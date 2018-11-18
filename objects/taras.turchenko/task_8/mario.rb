require_relative './console_io'

class Mario
	PERSON_WIDTH = 4
	PYRAMID_WIDTH = 20
	DISTANCE = 50
	FLAG_OFFSET = DISTANCE + (PYRAMID_WIDTH / 2) - 3

	attr_accessor :person_offset

	def initialize
		self.person_offset = 0
	end

	def start
		render
		read_input until end?
		render_final
	end

	def end?
		person_offset > DISTANCE - 9
	end

	def read_input
		readed_char = ConsoleIO.read_char

		case readed_char
		when ConsoleIO::BUTTONS[:left]
			self.person_offset -= 1 if person_offset > 0
		when ConsoleIO::BUTTONS[:right]
			self.person_offset += 1
		end

		render
	end

	def render
		unless end?
			ConsoleIO.clear_screen
			puts "\n" * 4
		end

		pyramid_top_offset = ' ' * DISTANCE

		puts pyramid_top_offset + '        ####'
		puts pyramid_top_offset + '      ########'

		person_offset = ' ' * self.person_offset
		pyramid_offset = ' ' * (DISTANCE - self.person_offset - PERSON_WIDTH)

		puts person_offset + ' ## ' + pyramid_offset + '    ############'
		puts person_offset + '####' + pyramid_offset + '  ################'
		puts person_offset + ' ## ' + pyramid_offset + '####################'
		puts '#' * (DISTANCE + PYRAMID_WIDTH * 2)
	end

	def render_final
		flag_chars_offset = ' ' * FLAG_OFFSET

		4.times do |frame_number|
			ConsoleIO.clear_screen

			puts "\n" * (4 - frame_number)

			frame_number.times do |flag_height|
				flag_line = flag_height != 2 ? '####' :  '   #'
				puts flag_chars_offset + flag_line
			end

			render

			sleep 0.3
		end
	end
end

Mario.new.start
