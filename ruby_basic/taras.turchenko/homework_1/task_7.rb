# @param [String] value. format [first_el,second_el,third_el,etc]
def parse_argv_array(value)
  value.tr('[]', '').split(',')
end

array = parse_argv_array ARGV.first

if array.empty?
  puts 'Array is empty'
else
  random_max = array.length - 1
  random_element = array[rand(0..random_max)]
  puts "Random element of array is #{random_element}"
end