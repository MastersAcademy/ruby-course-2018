file = ARGV[0]
str = ARGV[1]

File.foreach(file).with_index do |line, line_num|
  if line.include?(str)
    puts "#{line_num}"
    break
  end
end
