module Brackets
  def parentheses_valid?
    stack = []
    mapping = {
        ')' => '(',
        '}' => '{',
        ']' => '[',
        # '>' => '<'
    }

    each_char do |char|
      if mapping.has_key?(char)
        top_element = stack.empty? ? '#' : stack.pop
        if mapping[char] != top_element
          return false
        end
      else
        stack.push(char)
      end
    end
    stack.empty?
  end
end

class String
  include Brackets
end

puts ARGV[0].parentheses_valid? ? "valid" : "invalid"