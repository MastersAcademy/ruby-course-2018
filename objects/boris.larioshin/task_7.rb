# created class BalancedBrackets for task number 7
class BalancedBrackets
  OPEN_BRACKETS = '{[(<'.freeze
  CLOSE_BRACKETS = '}])>'.freeze
  attr_accessor :str

  def initialize(str)
    self.str = str
  end

  def validate_brackets
    stack = []
    str.each_char do |symbol|
      if OPEN_BRACKETS.include?(symbol)
        stack.push(symbol)
      elsif CLOSE_BRACKETS.include?(symbol)
        index = CLOSE_BRACKETS.index(symbol)
        return puts 'invalid' if stack.last != OPEN_BRACKETS[index]

        stack.pop
      end
    end
    puts stack.empty? ? 'valid' : 'invalid'
  end
end

str_from_terminal = ARGV.first
BalancedBrackets.new(str_from_terminal).validate_brackets
