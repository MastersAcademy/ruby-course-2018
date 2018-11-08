# TASK #2 Receive text file and color and input colored to console
class String
  def recieve_data
    @params = ARGV
    @color = @params[0]
    @text_file = @params[1]
    @text_file = File.open(@text_file).read
    puts @text_file.send(@color.to_sym)
  end

  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def blue
    colorize(34)
  end

  def pink
    colorize(35)
  end

  def light_blue
    colorize(36)
  end
end
String.new.recieve_data
# type ruby color_string.rb pink text.txt
