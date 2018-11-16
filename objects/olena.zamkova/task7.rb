class SyntaxCheck
  def braces_match?(string)
    braces = string.gsub(/[^\[\]\(\)\{\}]/, '')

    return true if braces.empty?
    return false if braces.size.odd?

    loop do
      remainder = braces.gsub('[]', '').gsub('()', '').gsub('{}', '')

      return true if remainder.empty?
      # check if no more adjacent pairs can be removed and the string is non-empty
      return false if braces == remainder

      braces = remainder
    end
  end

  def output_result(string)
    result = braces_match?(string) ? 'valid' : 'invalid'
    puts "#{string} - #{result}"
  end
end

SyntaxCheck.new.output_result '{aaa}'
SyntaxCheck.new.output_result '{aaa'
SyntaxCheck.new.output_result '{(aaa}'
SyntaxCheck.new.output_result '{(aaa})'
