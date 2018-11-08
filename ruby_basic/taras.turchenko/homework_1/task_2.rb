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

# @param [String] string
# @param [Symbol] color
def colorize(string, color)
  color_code = COLORS[color]
  return string if color_code.nil?
  "\e[#{color_code}m#{string}\e[0m"
end

color, path_to_file = ARGV

File.open path_to_file do |file|
  file.each do |line|
    print colorize line, color.to_sym
  end
end