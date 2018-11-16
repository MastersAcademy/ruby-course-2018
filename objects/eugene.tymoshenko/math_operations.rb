module MathOperations
  def plus
    "\e[#{random_color}m#{@arg1 + @arg2}\e[0m"
  end

  def minus
    "\e[#{random_color}m#{@arg1 - @arg2}\e[0m"
  end

  def divide
    return "\e[#{random_color}mYou can't divide by zero\e[0m" if @arg2.zero?

    "\e[#{random_color}m#{@arg1.to_f / @arg2}\e[0m"
  end

  def multiply
    "\e[#{random_color}m#{@arg1 * @arg2}\e[0m"
  end

  def random_color
    [32, 33, 34, 31].sample
  end
end