class Number
  @value
  attr_reader :value

  # @param [String, Integer, Float] value
  def initialize(value)
    @value = value.to_f
  end

  # @param [Number] number
  def +(number)
    Number.new(@value + number.value)
  end

  # @param [Number] number
  def -(number)
    Number.new(@value - number.value)
  end

  # @param [Number] number
  def /(number)
    Number.new(@value / number.value)
  end

  # @param [Number] number
  def *(number)
    Number.new(@value * number.value)
  end

  def to_s
    @value.to_s
  end
end

first_number, operation, second_number = ARGV

case operation
when '+'
  puts Number.new(first_number) + Number.new(second_number)
when '-'
  puts Number.new(first_number) - Number.new(second_number)
when '*'
  puts Number.new(first_number) * Number.new(second_number)
when '/'
  puts Number.new(first_number) / Number.new(second_number)
else
  puts 'Incorrect operation'
end