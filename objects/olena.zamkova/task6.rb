module Visualization
  COLORS = {
    black: 30,
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    gray: 37
  }.freeze

  COLORS.each do |method_name, color_code|
    define_method method_name do |string|
      "\e[#{color_code}m#{string}\e[0m"
    end
  end
end

class Calculator
  include Visualization

  OPERATORS = {
    plus: '+',
    minus: '-',
    divide: '/',
    multiply: '*'
  }.freeze

  OPERATIONS_COLORS = {
    plus: 'red',
    minus: 'green',
    divide: 'yellow',
    multiply: 'blue'
  }.freeze

  def initialize(a, b)
    @a = a
    @b = b
  end

  OPERATORS.each do |method_name, operator|
    define_method method_name do
      @a.send(operator, @b) unless method_name.to_s == 'divide' && @b.zero?
    end
  end

  def output_results
    OPERATIONS_COLORS.each do |operation, color|
      result = send(operation)
      puts "#{@a} #{OPERATORS[operation]} #{@b} = #{send(color, result)}"
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
    raise('Wrong number of arguments!') unless input.length.eql?(2)
    raise('Wrong data type!') unless input[0].number? && input[1].number?
  end
end

begin
  input = ARGV
  Validator.new.validate(input)

  data = input.map(&:to_f)

  Calculator.new(*data).output_results
rescue StandardError => e
  puts e.to_s
end
