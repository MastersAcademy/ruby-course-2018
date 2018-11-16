# Realize a class that displays a given text in a given color. The methods must be declared dynamically.
# Supported colors: red, green, yellow, blue

class Colorize
  COLORS = {
    red:    '31',
    green:  '32',
    yellow: '33',
    blue:   '34'
  }.freeze

  def initialize(text)
    @text = text
  end

  COLORS.each do |method_name, value|
    define_method method_name do
      "\e[#{value}m#{@text}\e[0m"
    end
  end
end

text  = gets.chomp
color = gets.chomp
puts Colorize.new(text).send(color)
