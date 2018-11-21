module Brackets
  MAPPING = {
      ')' => '(',
      '}' => '{',
      ']' => '[',
      '>' => '<'
  }
  def parentheses_valid?
    stack = []
    each_char do |char|
      if MAPPING.has_key?(char)
        top_element = stack.empty? ? '#' : stack.pop
        if MAPPING[char] != top_element
          return false
        end
      else
        stack.push(char)
      end
    end
    stack.empty?
  end
end

String.include Brackets

puts ARGV[0].gsub(/\w*\s*/, '').parentheses_valid? ? "valid" : "invalid"