# Task 5
class ColorString
  COLORS = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34
  }.freeze

  def initialize(text)
    @text = text
  end

  COLORS.each do |method_name, color|
    define_method method_name do
      "\e[#{color}m#{@text}\e[0m"
    end
  end
end

puts ColorString.new('Hello, my name is Sergey').red
