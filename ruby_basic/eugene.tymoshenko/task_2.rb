# Script accepts the color code as a text and filename, and then displays the text from the file in a given color.
# Input example: ruby yourscript.rb red some.txt
# Supported colors: red, green, yellow, blue, white

def colorize(text, color_code)
  "#{color_code}#{text}\e[0m"
end

def red(text)
  colorize(text, "\e[31m")
end

def green(text)
  colorize(text, "\e[32m")
end

def yellow(text)
  colorize(text, "\e[33m")
end

def blue(text)
  colorize(text, "\e[34m")
end

def white(text)
  colorize(text, "\e[37m")
end

filename = ARGV[0]
color = ARGV[1]

f = File.open(filename)
f.each do |file|
  file.each_line do |line|
    puts send(color, line)
  end
end
