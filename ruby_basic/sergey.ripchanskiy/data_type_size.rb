# TASK #4 Show boolean as string and integer size
input_data = ARGV[0]
def to_boolean(input_data)
  case input_data
    when true,'true',1,'1'
      return true
    when false, 'false',0,'0'
      return false
  end
end

boolean_as_string_size =  to_boolean(input_data).to_s.bytesize
puts "boolean as string size = #{boolean_as_string_size} bytes"
boolean_as_integer_size =  to_boolean(input_data).to_s.to_i.size
puts "boolean as integer size = #{boolean_as_integer_size} bytes"
# type ruby data_type_size.rb 1 / true / 'true'