# Task 5
require './string'
class StringColored

  def initialize(text)
    @text = text
  end
  COLOURS = {black: "black", red: "red", green: "green", blue: "blue"}.freeze
  COLOURS.each do |method_name, colour|
    define_method method_name do
      @text.send(colour)
    end

  end

end

puts StringColored.new('Hello, GREEN World!').green
puts StringColored.new('Hello, BLACK World!').black
puts StringColored.new('Hello, RED World!').red
puts StringColored.new('Hello, BLUE World!').blue