# @param [String] value. format [first_el,second_el,third_el,etc]
def parse_argv_array(value)
  value.tr('[]', '').split(',')
end

array = parse_argv_array ARGV.first
sorted_array = array.sort {|first, second| second <=> first}
puts "Sorted array: #{sorted_array}"