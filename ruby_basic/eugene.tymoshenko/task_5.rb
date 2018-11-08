# Скрипт приймає назву текстового файлу та рядок, треба знайти номер рядка з файла, де впершу зустрічається заданий рядок
# Input example: ruby yourscript.rb file.txt somestring

filename = gets.chomp
string = gets.chomp

count = 0
f = File.open(filename)
f.each do |file|
  file.each_line do |line|
    count += 1
    return puts count if line.include? string
  end
end