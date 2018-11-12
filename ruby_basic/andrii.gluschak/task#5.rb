p 'Enter file name'
file = gets.chomp
p 'Enter text'
text = gets.chomp
file = File.new(file)
file.each_with_index do |line, index|
    if line.chomp == text
      puts index+1
    break
  end
end
