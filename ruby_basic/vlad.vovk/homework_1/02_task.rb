require 'colorize'

def set_color
  color = ARGV.first.to_sym
  color = :blue unless String.colors.include? color 
  color
end

def colorzite_text
  color = set_color
  
  File.open("#{ARGV.last}", 'r') do |file|
    file.each do |line|
      puts line.colorize(color)
    end
  end
end

colorzite_text
