class String
	COLORS = {
		black: 30,
		red: 31,
		green: 32,
		brown: 33,
		blue: 34,
		magenta: 35,
		cyan: 36,
		gray: 37
	}.freeze

	def colorize(color_code)
		"\e[#{color_code}m#{self}\e[0m"
	end

	COLORS.each do |name, color_code|
		define_method(name) { colorize color_code }
	end
end
