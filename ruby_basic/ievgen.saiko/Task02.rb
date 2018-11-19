class String

  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

end

colors = {"default": "38", "black": "30", "red": "31", "green": "32", "brown": "33", "blue": "34", "purple": "35",
"cyan": "36", "gray": "37", "dark gray": "1;30", "light red": "1;31", "light green": "1;32", "yellow": "1;33",
"light blue": "1;34", "light purple": "1;35", "light cyan": "1;36", "white": "1;37"}

abort("You must specify the color and file name! Try arain, please") unless ARGV.length.eql?(2)

color_name = ARGV[0]
file_name = ARGV[1]

case colors[color_name.to_sym]
  when nil
    puts "This color is not supported or incorrect color name. Try again, please" 
  else
    File.open("#{file_name.to_s}", 'r') do |file|
      file.each do |line|
        puts line.colorize(colors[color_name.to_sym])
      end
    end
end
