module Addcolor
  COLORS = {
      black: 30,
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34
  }.freeze

  COLORS.each do |method, color|
    define_method method do |item|
      puts colorize(item, color)
    end
  end

  def colorize(item, color)
    "\e[#{color}m#{item}\e[0m"
  end
end