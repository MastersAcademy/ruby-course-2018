strg_boolean = ARGV.first

# @param [String] value
def strg_boolean_to_int(value)
  case value
  when 'true'
    1
  when 'false'
    0
  else
    throw '[ERROR] You must pass as argument true or false'
  end
end

# @param [String] value
def print_string_result(value)
  puts "Value as String : #{value}. And it has #{value.bytesize} bytes"
end

# @param [Integer] value
def print_integer_result(value)
  puts "Value as Integer: #{value}. And it has #{value.size} bytes"
end

print_string_result(strg_boolean)
print_integer_result(strg_boolean_to_int strg_boolean)