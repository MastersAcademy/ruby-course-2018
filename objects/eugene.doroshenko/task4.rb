
#Реалізувати клас для математичних операцій. Методи повинні декларуватись динамічно.
class MathOperations

   OPERATORS = {
      plus: '+',
      minus: '-',
      divide: '/'
      myltiply: '*'
  }.freeze

  def initialize
    puts "Input first element"
    @el1 = gets.chomp.to_i
    puts "Input second element"
    @el2 = gets.chomp.to_i
  end

  OPERATORS.each do |method_name, math_symbol|
    define_method method_name do
      puts "#{@el1.send(math_symbol, @el2)}" 
    end
  end

end

MathOperations.new