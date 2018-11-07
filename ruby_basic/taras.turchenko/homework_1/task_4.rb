strg_boolean = ARGV.first

def strg_boolean_to_int(strg_boolean)
  case strg_boolean
  when 'true'
    1
  when 'false'
    0
  else
    throw '[ERROR] You must pass as argument true or false'
  end
end

def print_string_result(value)
  puts "Value as String : #{value}. And it has #{value.bytesize} bytes"
end

def print_number_result(value)
  puts "Value as Integer: #{value}. And it has #{value.size} bytes"
end

print_string_result(strg_boolean)
print_number_result(strg_boolean_to_int strg_boolean)