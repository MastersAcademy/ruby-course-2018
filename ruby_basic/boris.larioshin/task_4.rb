require 'objspace'

bool_value = ARGV[0]
if bool_value =~ (/(true|t|yes|y|1)$/i)
  bool_value = true
else bool_value =~ (/(false|f|no|n|0)$/i)
  bool_value = false
end

bool_to_int = bool_value ? 1 : 0
bool_to_str = bool_value ? 'true' : 'false'

puts bool_to_int
puts ObjectSpace.memsize_of(bool_to_int)
puts bool_to_str
puts ObjectSpace.memsize_of(bool_to_str)
