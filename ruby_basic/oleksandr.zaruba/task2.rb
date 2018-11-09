# Скрипт приймає код кольору в виді тексту та назву файла,
# після чого виводить текст з файла в заданому кольорі
# Input example: ruby yourscript.rb red some.txt

require 'colorize'

class String
  def initialize(color)
    @color = color
  end

  def red
    colorize(self, "\e[1m\e[31m")
  end

  def green
    colorize(self, "\e[1m\e[32m")
  end

  def dark_green
    colorize(self, "\e[32m")
  end

  def yellow
    colorize(self, "\e[1m\e[33m")
  end

  def blue
    colorize(self, "\e[1m\e[34m")
  end

  def dark_blue
    colorize(self, "\e[34m")
  end

  def pur
    colorize(self, "\e[1m\e[35m")
  end

  def colorize(color_code, text)
    "#{color_code}#{text}\e[0m"
  end
end

if ARGV.length != 2
  puts 'We need exactly two parameter. Color end the name of file'
  exit

end
filename = ARGV[1]
puts "Going to open '#{filename}'"

fh = open filename
fh.each { |line| puts line }
fh.close
