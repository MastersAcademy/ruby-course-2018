# Task 5
class String
  def black
    "\e[30m#{self}\e[0m"
  end

  def red
    "\e[31m#{self}\e[0m"
  end

  def green
    "\e[32m#{self}\e[0m"
  end

  def brown
    "\e[33m#{self}\e[0m"
  end

  def blue
    "\e[34m#{self}\e[0m"
  end

end
#
class StringColored

  def initialize(text)
    @text = text
  end
  colours = {black: "black", red: "red", green: "green", blue: "blue"}.freeze
  colours.each do |method_name, colour|
    define_method method_name do
      @text.send(colour)
    end

  end

end

puts StringColored.new('Hello,World!').green
