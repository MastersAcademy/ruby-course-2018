COLORS = {
    black: 30,
    red: 31,
    green: 32,
    brown: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    gray: 37
}

def colorize(string, color)
  "\e[#{COLORS[color]}m#{string}\e[0m"
end

color, path_to_file = ARGV

File.open path_to_file do |file|
  file.each do |line|
    print colorize line, color.to_sym
  end
end