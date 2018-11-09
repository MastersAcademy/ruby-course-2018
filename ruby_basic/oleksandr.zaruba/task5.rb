# Скрипт приймає назву файлу та рядок, треба перший номер рядка з файла,
# де зустрічається заданий рядок
# Input example: ruby yourscript.rb text.txt somestring

filename = ARGV[0]
find_string = ARGV[1..-1].join(' ')
puts "Going to open '#{filename}'"

text = open filename

text.each_with_index do |line, index|
  if line.include?(find_string)
    p "Number of the required line: #{index}"
  end
end

text.close
