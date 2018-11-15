class DynamicMath
  OPERATIONS = {
      plus: '+',
      minus: '-',
      devide: '/',
      multiple: '*'
  }.freeze

  attr_accessor :a, :b

  def initialize(a, b)
    self.a = a.to_f
    self.b = b.to_f
  end

  OPERATIONS.each do |name, operation|
    define_method(name) {a.send(operation, b)}
  end
end

first_number, operation, second_number = ARGV

math = DynamicMath.new(first_number, second_number)

case operation
when 'plus'
  puts "#{first_number} + #{second_number} = #{math.plus}"
when 'minus'
  puts "#{first_number} - #{second_number} = #{math.minus}"
when 'devide'
  puts "#{first_number} / #{second_number} = #{math.devide}"
when 'multiple'
  puts "#{first_number} * #{second_number} = #{math.multiple}"
else
  puts '[ERROR]: Incorrect operation'
end
