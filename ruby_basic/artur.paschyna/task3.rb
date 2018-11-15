b = []
a = []
ARGV.each_with_index do |value,key|
  if key % 2 == 0
    a << value
  else
    b << value
  end
end
puts a & b