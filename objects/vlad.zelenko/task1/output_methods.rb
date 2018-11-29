module OutPutMethods
  # attr_reader :level_number, :background, :speed_enemies
  
  def show_level_number
    "Level => #{@level_number}"
  end

  def background
    "background => #{@background}"
  end

  def show_speed_enemies
    "speed_enemies => #{@speed_enemies}"
  end

end