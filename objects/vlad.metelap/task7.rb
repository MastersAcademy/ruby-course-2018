# task 7
class Parentheses
  def check_validate(string, parentheses_pairs, parentheses_symbols)
    arr = string.chars
    if parentheses_pairs.key?(string[0])
      array_of_symbols = arr.select {|x| parentheses_symbols.include? x}
      arr_compare_results = []
      if array_of_symbols.count.even?
        first_element_index = 0
        last_element_index = array_of_symbols.length - 1
        count_of_iterations = array_of_symbols.count / 2
        while first_element_index < count_of_iterations
          opened_bracket = array_of_symbols[first_element_index]
          compare_elements = array_of_symbols[last_element_index] == parentheses_pairs["#{opened_bracket}"]
          first_element_index += 1
          last_element_index -= 1
          arr_compare_results << compare_elements
        end

        if arr_compare_results.include? false
          puts 'you are wrong in this string!'
        else
          puts 'write you are!'
        end
      else
        puts 'The number of parenthese must be even!'
      end

    else
      puts "start the string with symbols #{parentheses_pairs.keys}"
    end
  end
end

parentheses_pairs = {"(" => ")", "{" => "}", "[" => "]"}
parentheses_symbols = ["(", ")", "{", "}", "[", "]"]
string = '{(words)}'
Parentheses.new.check_validate(string, parentheses_pairs, parentheses_symbols)