class ColorText
  def initialize
    @text
    @color
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

  def create_method(name_method, text)
    def define_method name_method do 
      "\e[#{HASH_COLOR[:name_method]}m#{text}\e[0m"
    end
  end
  create_method :black, :red, :green, :brown, :blue, :purple, :cyan, :gray
end

color_text = ColorText.new
p color_text.red("test")