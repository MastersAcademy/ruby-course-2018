# task 7
class Parentheses
  def check_validate(string, parentheses_pairs, parentheses_symbols)
    arr = string.split("")
    if parentheses_pairs.has_key?(string[0])
      array_of_symbols = []
      arr.each do |x|
        array_of_symbols << x if parentheses_symbols.include? x
      end

      arr_compare_results = []
      if (array_of_symbols.count % 2).zero?
        i = 0
        c = array_of_symbols.length - 1
        while i < array_of_symbols.count / 2
          x = array_of_symbols[c] == parentheses_pairs["#{array_of_symbols[i]}"]
          i += 1
          c -= 1
          arr_compare_results << x
        end

        if arr_compare_results.include? false
          puts 'you are wrong in this string'
        else
          puts 'write you are'
        end
      else
        puts 'The number of parenthese must be a couples'
      end

    else
      puts "start the string with symbols #{parentheses_pairs.keys}"
    end
  end
end
parentheses_pairs = {"(" => ")", "{" => "}", "[" => "]"}
parentheses_symbols = ["(", ")", "{", "}", "[", "]"]

# Try this strings:
string = '{(aaa)}'
# string = '{(aaa)'
# string = '{(aaa)}'

Parentheses.new.check_validate(string, parentheses_pairs, parentheses_symbols)