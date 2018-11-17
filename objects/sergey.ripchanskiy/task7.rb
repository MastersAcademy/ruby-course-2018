# task 7
class Bracket
  def check_validate(string, brackets_pairs, brackets_symbols)
    if brackets_pairs.has_key?(string[0])
      array_of_symbols = string.chars.select { |char| brackets_symbols.include? char }
      arr_compare_results = []
      if array_of_symbols.count.even?
        first_element = 0
        last_element = array_of_symbols.length - 1
        count_of_iterations = array_of_symbols.count / 2
        while first_element < count_of_iterations
          compare_elements = array_of_symbols[last_element] == brackets_pairs["#{array_of_symbols[first_element]}"]
          first_element += 1
          last_element -= 1
          arr_compare_results << compare_elements
        end

        if arr_compare_results.include? false
          puts 'fail, you made a mistake in this string'
        else
          puts 'Good job, buddy!'
        end
      else
        puts 'The number of characters must be even'
      end

    else
      puts "the string must start with symbols #{brackets_pairs.keys}"
    end
  end
end
brackets_pairs = {"(" => ")", "{" => "}", "[" => "]"}
brackets_symbols = ["(", ")", "{", "}", "[", "]"]

# Try this strings:
#string = '{(aaa})'
#string = '{(aaa)'
string = '{(aaa)}'

Bracket.new.check_validate(string, brackets_pairs, brackets_symbols)
