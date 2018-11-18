require 'io/console'

module ConsoleIO
	BUTTONS = {
		left: "\e[D",
		right: "\e[C"
	}.freeze

	def self.read_char
		STDIN.raw!
		input = STDIN.getc.chr
		input << STDIN.read_nonblock(2)
	rescue IO::EAGAINWaitReadable
		nil
	ensure
		STDIN.cooked!
		input
	end

	def self.clear_screen
		system 'clear'
		print "\033[4A"
	end
end
