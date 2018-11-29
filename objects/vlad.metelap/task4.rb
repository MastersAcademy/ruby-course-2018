# Task 4
class Maths
  OPERATIONS = {
    plus: '+',
    minus: '-',
    divide: '/',
    multiply: '*'
  }.freeze

  COLOURS = {
    minus: 31,
    plus: 32,
    devide: 33,
    multiply: 34
  }.freeze

  def initialize(a, b)
    @a = a
    @b = b
  end

  OPERATIONS.each do |method_name, operation|
    colour =  COLOURS[:"#{method_name}"]
    define_method method_name do
      rezult = @a.send(operation,@b)
      "\e[#{colour}m#{rezult}\e[0m"
    end
  end

end

puts Maths.new(-19.3, -53).plus
puts Maths.new(-44.6, 100).minus
puts Maths.new(-169.3, -523).divide
puts Maths.new(-47.6, -1023).multiply