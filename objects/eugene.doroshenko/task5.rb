require_relative "colors"

class ColorInputText
  attr_accessor :input_text, :chosen_color
  extend ColorizeText
  
  def initialize
    puts "Please, input yor text"
    @input_text = gets.chomp
    puts "choose color: red, green, blue or gray"
    @chosen_color = gets.chomp
  end

  colors_hash.each do |method_name, color|
    define_method method_name do
      puts "\e[#{color}m#{@input_text}\e[0m"
    end
  end

  def color_text_sym
    send @chosen_color.to_sym
  end

end

some_colorized_text = ColorInputText.new
puts some_colorized_text.color_text_sym
