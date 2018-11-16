# Realize a class that checks the syntactic correctness of the closed. Open parenthesis in the passed string.
# Example: "{aaa}" - valid "{aaa" - invalid "{(aaa}" - invalid "{(aaa})" - invalid

class Validator
  BRACES = { '{' => '}', '[' => ']', '(' => ')', '<' => '>' }.freeze

  def initialize(string)
    @string = string
  end

  def valid_string?
    stack = []
    @string.each_char do |character|
      stack << character if BRACES.key?(character)
      return false if BRACES.key(character) && BRACES.key(character) != stack.pop
    end
    stack.empty?
  end
end

string = gets.chomp
puts Validator.new(string).valid_string?
