# TASK #2 Receive text file and color and input colored to console
COLORS = {
  red: 31,
  green: 32,
  yellow: 33,
  blue: 34,
  pink: 35,
  light_blue: 36
}.freeze

# Get params(color and text) and pass to method colorize of String class
class Color
  def initialize
    @params = ARGV
  end

  def colorator
    color = @params[0].to_sym
    color_code = COLORS[color]
    get_text_file = @params[1]
    text_file = File.open(get_text_file).read
    text_file.colorize(color_code)
  end
end

# Add colorize method to string class
class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end
end
puts Color.new.colorator
# type ruby test.rb pink text.txt
