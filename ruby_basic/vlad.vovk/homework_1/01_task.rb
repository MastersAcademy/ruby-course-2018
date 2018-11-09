def utc_zone
  one = "+0#{ARGV.first}:00"
  two = "+#{ARGV.first}:00"
  ARGV.first.length <= 1 ? user_input = one : user_input = two 
  timezone = Time.now.getlocal(user_input)
end

p utc_zone  