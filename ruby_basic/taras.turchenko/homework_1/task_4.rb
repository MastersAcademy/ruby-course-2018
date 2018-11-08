strg_boolean = ARGV.first

# @param [String] value
def strg_boolean_to_int(value)
  case value
  when 'true'
    1
  when 'false'
    0
  else
    raise '[ERROR] You must pass as argument true or false'
  end
end

# @param [Integer, String] value
def print_result(value, bytesize)
  puts "Value as #{value.class} : #{value}. And it has #{bytesize} bytes"
end

print_result(strg_boolean, strg_boolean.bytesize)

int_boolean = strg_boolean_to_int strg_boolean
print_result(int_boolean, int_boolean.size)