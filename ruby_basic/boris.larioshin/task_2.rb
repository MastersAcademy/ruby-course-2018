COLOR_NAME = {
    black: 30,
    red: 31,
    green: 32,
    brown: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    gray: 37
}.freeze

color_code = COLOR_NAME[ARGV[0].downcase.to_sym]
file_path = ARGV[1]

File.open(file_path) do |file|
  file.each do |line|
    print "\e[#{color_code}m#{line}\e[0m"
  end
end
