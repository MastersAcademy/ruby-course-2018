class Calculator
  OPERATORS = {
    plus: '+',
    minus: '-',
    divide: '/',
    multiply: '*'
  }.freeze

  def initialize(a, b)
    @a = a
    @b = b
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      @a.send(operator, @b)
    end
  end
end

class String
  def number?
    Float(self)
    true
  rescue
    false
  end
end

class Validator
  SUPPORTED_OPERATORS = Calculator::OPERATORS.keys.map(&:to_s).freeze

  def validate(input)
    raise('Wrong number of arguments!') unless input.length.eql?(3)
    raise('Wrong data type!') unless input[0].number? && input[1].number?
    raise('Operation is not allowed!') unless SUPPORTED_OPERATORS.include?(input[2])
    raise('Division by 0 is not allowed!') if input[1] == '0' && input[2] == 'divide'
  end
end

begin
  input = ARGV
  Validator.new.validate(input)

  data = input[0..1].map(&:to_f)
  operator = input[2]

  calculator = Calculator.new(*data)

  puts "Result: #{calculator.send(operator)}"
rescue StandardError => e
  puts e.to_s
end
