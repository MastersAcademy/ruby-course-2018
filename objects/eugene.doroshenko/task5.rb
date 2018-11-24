require_relative "colors"

class ColorInputText
  attr_accessor :input_text, :chosen_color
  include ColorizeText
  
  def initialize
    puts "Please, input yor text"
    @input_text = gets.chomp
    puts "choose color: red, green, blue or gray"
    @chosen_color = gets.chomp.to_sym
  end

  ColorizeText::ColorList.list_of_colors.each do |method_name, color|
    define_method method_name do
      puts "\e[#{color}m#{@input_text}\e[0m"
    end
  end

  def color_present?
   ColorizeText::ColorList.list_of_colors.key?(@chosen_color)
  end

  def color_text_sym
    raise "there's no such color in hash" if color_present? == false
    send @chosen_color
  end

end

some_colorized_text = ColorInputText.new
puts some_colorized_text.color_text_sym
