class Number
  @value
  attr_reader :value

  def initialize(value)
    @value = value.to_f
  end

  def self.from_string(string)
    Number.new(string.to_f)
  end

  def +(number)
    Number.new(@value + number.value)
  end

  def -(number)
    Number.new(@value - number.value)
  end

  def /(number)
    Number.new(@value / number.value)
  end

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
  puts Number.from_string(first_number) + Number.from_string(second_number)
when '-'
  puts Number.from_string(first_number) - Number.from_string(second_number)
when '*'
  puts Number.from_string(first_number) * Number.from_string(second_number)
when '/'
  puts Number.from_string(first_number) / Number.from_string(second_number)
else
  puts 'Incorrect operation'
end