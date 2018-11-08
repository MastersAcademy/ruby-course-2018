if ARGV.length != 2
	puts "Should be two parametres. First - color, second - file name"
	exit
end

set_color = ARGV[0].to_s
file_name = ARGV[1].to_s

def colorize(color_code)
  "\e[#{color_code}m#{self}\e[0m"
end

def text_color
	case set_color
	 when 'red'
	 	corolize(31)
	 when 'green'
	 	colorize(32)
	 when 'blue'
	 	colorize(34)
	 when 'gray'
	 	colorize(37)
	 end 
end

File.foreach ("#{file_name}") do |line|
	puts line
end
