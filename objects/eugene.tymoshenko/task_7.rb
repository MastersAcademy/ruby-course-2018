class Validator
  def initialize(string)
    @string = string
  end

  def valid_string?
    stack = []
    braces = { '{' => '}', '[' => ']', '(' => ')' }
    @string.each_char do |character|
      stack << character if braces.key?(character)
      print stack
      return false if braces.key(character) && braces.key(character) != stack.pop
      print stack
    end
    stack.empty?
  end
end

string = gets.chomp
puts Validator.new(string).valid_string?
