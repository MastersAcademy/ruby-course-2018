require_relative 'colorize'

class Maths
  include Colorize

  OPTIONS = {
    plus: :+,
    minus: :-,
    devide: :/,
    multiply: :*
  }.freeze

  def initialize(value_1, value_2)
    @value_1 = value_1
    @value_2 = value_2
  end

  OPTIONS.each do |key, value|
    define_method key do
      output = @value_1.send(value, @value_2)
      colorize(output, take_color_index)
    end
  end

  def take_color_index
    Colorize::COLORS.values.sample
  end
end

puts Maths.new(1, 2).plus
puts Maths.new(1, 2).minus
puts Maths.new(1, 2).devide
puts Maths.new(1, 2).multiply
