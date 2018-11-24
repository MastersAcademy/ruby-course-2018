# Mixin module according to the conditions of task 6
module ColoredLine
  COLORS = {
    black: 30,
    red: 31,
    green: 32,
    brown: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    gray: 37
  }.freeze

  def colored_text(item)
    "\e[#{COLORS.values.sample}m#{item}\e[0m"
  end
end


