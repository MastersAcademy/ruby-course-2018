if ARGV.length != 2
	puts "Should be two parametres. First - color, second - file name"
	exit
end

@set_color = ARGV[0].to_s
file_name = ARGV[1].to_s

def colorize(color_code, file_text)
  "\e[#{color_code}m#{file_text}\e[0m"
end

def text_color(file_text)
	case @set_color
	 when 'red'
	 	colorize(31, file_text)
	 when 'green'
	 	colorize(32, file_text)
	 when 'blue'
	 	colorize(34, file_text)
	 when 'gray'
	 	colorize(37, file_text)
	 end 
end

File.foreach ("#{file_name}") do |line|
	puts text_color(line)
end
