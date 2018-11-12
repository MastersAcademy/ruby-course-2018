@arr = Array.new

ARGV.each do|a|
  @arr = @arr << a
end

puts @arr.sample
