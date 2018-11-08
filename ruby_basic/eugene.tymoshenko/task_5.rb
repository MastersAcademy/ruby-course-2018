# Скрипт приймає назву текстового файлу та рядок, треба знайти номер рядка з файла, де впершу зустрічається заданий рядок
# Input example: ruby yourscript.rb file.txt somestring

if ARGV.length != 2
  puts 'Enter file name and word for search'
  exit
end

filename = ARGV[0]
word = ARGV[1]

count = 0
f = File.open(filename)
f.each do |file|
  file.each_line do |line|
    count += 1
    return puts count if line =~ /#{word}/
  end
end

