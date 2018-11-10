SUPPORTED_COLORS = ['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'gray']

abort("Wrong number of arguments!") unless ARGV.length.eql?(2)

color = ARGV[0]
path = ARGV[1]

abort("Color is not supported. Supported colors are #{SUPPORTED_COLORS.join(', ')}.") unless SUPPORTED_COLORS.include?(color)

abort("File not found.") unless File.file?(path)

class String
	def colorize(color_code)
		"\e[#{color_code}m#{self}\e[0m"
	end

	def black; colorize(30); end
	def red; colorize(31); end
	def green; colorize(32); end
	def yellow; colorize(33); end
	def blue; colorize(34); end
	def magenta; colorize(35); end
	def cyan; colorize(36); end
	def gray; colorize(37); end
end

File.open(path, "r") do |f|
	f.each_line do |line|
		puts line.send(color)
	end
end