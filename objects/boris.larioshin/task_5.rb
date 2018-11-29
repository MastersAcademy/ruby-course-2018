# created class ColoredText for task number 5
class ColoredText
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

  attr_accessor :text_line

  def initialize(text_line)
    self.text_line = text_line
  end

  COLOR_NAME.each do |name, color_code|
    define_method(name) { "\e[#{color_code}m#{text_line}\e[0m" }
  end
end
