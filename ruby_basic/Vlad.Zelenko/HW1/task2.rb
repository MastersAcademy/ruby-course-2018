class TextColor
  def initialize(color, file_name)
    @color = color.to_sym
    @file_name = file_name
  end

  HASH_COLOR = {
    black:  30,
    red:    31,
    green:  32,
    brown:  33,
    blue:   34,
    purple: 35,
    cyan:   36,
    gray:   37
}.freeze

  #На випадок якщо знадобиться текст до покраски
  def get_file_to_string
    File.readlines(@file_name, "r").join(",")
  end

  def paint_text     
    "\e[#{HASH_COLOR[@color]}m#{getFileToString()}\e[0m"
  end
end

text_color = TextColor.new(gets.chomp, gets.chomp)
puts text_color.paint_text
