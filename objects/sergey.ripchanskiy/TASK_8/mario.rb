# Mario game class
class Mario
  def initialize
    @steps = 0
  end

  def repeat(text, c)
    c.times do
      print text 
    end
  end

  def end_game?
    @steps > 35
  end

  def final_stage?
    @steps >= 30
  end

  def step
    @space_before_user = 5 + @steps
    @space_before_user_body = 4 + @steps
    @space_to_pyramid = 80 - @steps
    @user_top_bottom = 2
    @user_body = 4
    @bu_space = @space_before_user + @user_top_bottom
    @bb_space = @space_before_user_body + @user_body

    100.times do
      print '#'
    end
    puts ''
    line1 = repeat(' ', 100) if !final_stage?
    line1 = repeat(' ', 80) + repeat('#', 3) if final_stage?
    puts ''
    line2 = repeat(' ', 100) if !final_stage?
    line2 = repeat(' ', 80) + repeat('#', 3) if final_stage?
    puts ''
    line3 = repeat(' ', 100) if !final_stage?
    line2 = repeat(' ', 82) + repeat('#', 1) if final_stage?
    puts ''
    line4 = repeat(' ', @steps) + repeat(' ', @space_to_pyramid) + repeat('#', 4)
    puts ''
    line5 = repeat(' ', @steps) + repeat(' ', @space_to_pyramid - 1) + repeat('#', 6)
    puts ''
    line6 = repeat(' ', @steps) + repeat(' ', @space_to_pyramid - 2) + repeat('#', 8)
    puts ''
    line7 = repeat(' ', @steps) + repeat(' ', @space_before_user) + repeat('#', @user_top_bottom) + repeat(' ', @space_to_pyramid - 3 - @bu_space) + repeat('#', 10)
    puts ''
    line8 = repeat(' ', @steps) + repeat(' ', @space_before_user_body) + repeat('#', @user_body) + repeat(' ', @space_to_pyramid - 4 - @bb_space) + repeat('#', 12)
    puts ''
    line9 = repeat(' ', @steps) + repeat(' ', @space_before_user) + repeat('#', @user_top_bottom) + repeat(' ', @space_to_pyramid - 5 - @bu_space) + repeat('#', 14)
    puts ''
    100.times do
      print '#'
    end
    puts ''
    @steps += 10
  end
end
