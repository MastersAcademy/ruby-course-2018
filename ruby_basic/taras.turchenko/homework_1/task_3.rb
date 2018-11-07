# @param [String] value. format [first_el,second_el,third_el,etc]
def parse_argv_array(value = '')
  value.tr('[]', '').split(',')
end

first_array = parse_argv_array(ARGV.first)
second_array = parse_argv_array(ARGV[1])

common_elements = first_array.select {|el| second_array.include? el}.uniq
puts "Common elements in arrays: #{common_elements.to_s}"