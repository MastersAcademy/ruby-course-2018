require_relative 'game_constructor'
require_relative 'colorize'

class SomethingLikeMario
  include Colorize
  LAST_LEVEL = 5

  def initialize
    last_level if ObjectSpace.each_object(self.class).count == LAST_LEVEL
  end
  
  def last_level
    image = ['\(*-*)/ |Last level', '  |||   |', ' _/ \_  |']
    image.each { |i| green i }
  end
end

5.times { SomethingLikeMario.new }
