# Скрипт приймає масив, сортує його по спаданню і виводить в консоль
# Input example: ruby yourscript.rb

array = gets.chomp.split
print array.sort!.reverse
