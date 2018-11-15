class Colorize
  COLORS = {
    red: 31,
    green: 32,
    magenta: 35,
    cyan: 36,
    yellow: 33
  }.freeze

  COLORS.each do |key, value|
    define_method key do |text|
      puts colorize(text, value)
    end
  end

  def colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end
end
