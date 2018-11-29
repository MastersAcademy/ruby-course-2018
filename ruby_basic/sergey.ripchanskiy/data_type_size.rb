# TASK #4 Show boolean as string and integer size
input_data = ARGV[0]
def to_boolean(input_data)
  if input_data == 'true'
    1
  else
    0
  end
end

boolean_as_string_size = to_boolean(input_data).to_s.bytesize
puts "boolean as string size = #{boolean_as_string_size} bytes"
boolean_as_integer_size = to_boolean(input_data).size
puts "boolean as integer size = #{boolean_as_integer_size} bytes"
# type ruby data_type_size.rb  true / false
