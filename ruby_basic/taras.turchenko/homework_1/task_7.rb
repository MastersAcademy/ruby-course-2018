# @param [String] value. format [first_el,second_el,third_el,etc]
def parse_argv_array(value)
  value.tr('[]', '').split(',')
end

array = parse_argv_array ARGV.first
puts !array.empty? ? "Random element of array is #{array.sample}" : 'Array is empty'
