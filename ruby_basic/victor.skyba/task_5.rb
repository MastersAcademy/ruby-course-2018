p 'Please, enter file name'
file = gets.chomp

p 'What find?'
find = gets.chomp

file = File.new(file)

file.each_with_index do |line, index|
  if line.chomp == find
    p index + 1
  end
end