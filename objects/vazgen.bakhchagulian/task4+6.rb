class MyNum
  OPERATORS = {
      sum: :+,
      sub: :-,
      mult: :*,
      div: :/
  }.freeze

  def initialize(operand1,operand2)
    @operand1 = operand1
    @operand2 = operand2
  end

  OPERATORS.each do |key, value|
    define_method key do
      @operand1.send(value, @operand2)
    end
  end
end
COLOR_CODES = [30,31,32,33,34,35,36,37].freeze

result = MyNum.new(ARGV[0].to_f, ARGV[1].to_f).send(ARGV[2].downcase.to_sym)

puts "\e[#{COLOR_CODES.sample}m#{result}\e[0m"