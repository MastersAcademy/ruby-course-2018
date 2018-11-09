# Скрипт приймає код кольору в виді тексту та назву файла, після чого виводить текст з файла в заданому кольорі
# Input example: ruby yourscript.rb red some.txt
# Supported colors: red, green, blue

def colorize(text, color_code)
  "#{color_code}#{text}\e[0m"
end

def red(text)
  colorize(text, "\e[31m")
end

def green(text)
  colorize(text, "\e[32m")
end

def blue(text)
  colorize(text, "\e[34m")
end


filename = ARGV[0]
color = ARGV[1]

f = File.open(filename)
f.each do |file|
  file.each_line do |line|
    puts line.send(color, line)
  end
end
