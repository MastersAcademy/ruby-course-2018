require 'colorize'

def set_color
  color = ARGV.first.to_sym
  color = :blue unless String.colors.include? color 
  color
end

def colorzite_text
  lines = []

  File.open("#{ARGV.last}", 'r') do |file|
    while (line = file.gets)
      lines.push line.colorize(set_color)
    end
  end
  
  lines.each { |l| puts l } 
end

colorzite_text
