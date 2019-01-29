# Mario game class
class Mario
  USER_PARTS = {
    user_body: 4,
    user_top_bottom: 2
  }.freeze

  LINE_SEQUENCE = %i(
    solid first second third fourth fifth
    sixth seventh eighth ninth solid
  ).freeze

  def initialize
    @steps = 0
  end

  def repeat(text, quantity)
    quantity.times { print text }
  end

  def end_game?
    @steps > 35
  end

  def final_stage?
    @steps >= 30
  end

  def print_first_line
    if final_stage?
      repeat(' ', 80)
      repeat('#', 3)
    else
      repeat(' ', 100)
    end
    puts ''
  end

  def print_second_line
    if final_stage?
      repeat(' ', 80)
      repeat('#', 3)
    else
      repeat(' ', 100)
    end
    puts ''
  end

  def print_third_line
    if final_stage?
      repeat(' ', 82)
      repeat('#', 1)
    else
      repeat(' ', 100)
    end
    puts ''
  end

  def print_fourth_line
    repeat(' ', @steps)
    repeat(' ', @space_to_pyramid)
    repeat('#', 4)
    puts ''
  end

  def print_fifth_line
    repeat(' ', @steps)
    repeat(' ', @space_to_pyramid - 1)
    repeat('#', 6)
    puts ''
  end

  def print_sixth_line
    repeat(' ', @steps)
    repeat(' ', @space_to_pyramid - 2)
    repeat('#', 8)
    puts ''
  end

  def print_seventh_line
    repeat(' ', @steps)
    repeat(' ', @space_before_user)
    repeat('#', USER_PARTS[:user_top_bottom])
    repeat(' ', @space_to_pyramid - 3 - @bu_space)
    repeat('#', 10)
    puts ''
  end

  def print_eighth_line
    repeat(' ', @steps)
    repeat(' ', @space_before_user_body)
    repeat('#', USER_PARTS[:user_body])
    repeat(' ', @space_to_pyramid - 4 - @bb_space)
    repeat('#', 12)
    puts ''
  end

  def print_ninth_line
    repeat(' ', @steps)
    repeat(' ', @space_before_user)
    repeat('#', USER_PARTS[:user_top_bottom])
    repeat(' ', @space_to_pyramid - 5 - @bu_space)
    repeat('#', 14)
    puts ''
  end

  def print_solid_line
    100.times { print '#' }
    puts ''
  end

  def step
    @space_before_user = 5 + @steps
    @space_before_user_body = 4 + @steps
    @space_to_pyramid = 80 - @steps
    @bu_space = @space_before_user + USER_PARTS[:user_top_bottom]
    @bb_space = @space_before_user_body + USER_PARTS[:user_body]
    LINE_SEQUENCE.each { |line_name| send("print_#{line_name}_line") }
    @steps += 10
  end
end
