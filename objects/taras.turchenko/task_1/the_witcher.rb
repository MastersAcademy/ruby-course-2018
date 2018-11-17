require_relative './base_game'

class TheWitcher
  include BaseGame

  attr_accessor :level_background, :speed_enemies, :level_number, :geralt_level

  def initialize(level_background, speed_enemies, level_number, geralt_level)
    @level_background = level_background
    @speed_enemies = speed_enemies
    @level_number = level_number
    @geralt_level = geralt_level
  end

  def show_geralt_level
    "Geralt of Rivia has #{@geralt_level} level"
  end

  def joke_about_unicorns
    "It's a long story..."
  end
end
