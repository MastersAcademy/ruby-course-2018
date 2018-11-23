require_relative "colors"

class ColorInputText
  attr_accessor :text, :chosen_color
  extend ColorizeText
  
  def initialize
    puts "Please, input yor text"
    @text = gets.chomp
    puts "choose color: red, green, blue or gray"
    @chosen_color = gets.chomp
  end

  colors_hash.each do |method_name, color|
    define_method method_name do
      puts "\e[#{color}m#{@text}\e[0m"
    end
  end

  def argv_sym
    send(@chosen_color.to_sym)
  end

end

some_colored_text = ColorInputText.new
puts some_colored_text.argv_sym
