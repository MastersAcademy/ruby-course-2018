module Brackets
  def parentheses_valid?
    stack = []
    mapping = {
        ')' => '(',
        '}' => '{',
        ']' => '[',
        # '>' => '<'
    }

    self.each_char do |char|
      if mapping.has_key?(char)
        if !stack.empty?
          top_element = stack.pop
        else
          top_element = '#'
        end
        if mapping[char] != top_element
          return false
        end
      else
        stack.push(char)
      end
    end

    return stack.empty?
  end
end

class String
  include Brackets
end

puts ARGV[0].parentheses_valid? ? "valid" : "invalid"