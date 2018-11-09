operation, first_value, second_value = ARGV
  if operation=="sum"
    puts first_value.to_i+second_value.to_i
  elsif operation=="diff"
    puts first_value.to_i-second_value.to_i
  elsif operation=="mult"
    puts first_value.to_i*second_value.to_i
  elsif operation=="div"
    puts first_value.to_i/second_value.to_i
  else
    puts "Try again =)"
  end