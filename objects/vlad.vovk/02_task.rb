require_relative 'colorize'

class SomethingLikeMario
  include Colorize
  LAST_LEVEL = 5

  def initialize
    greeting_message if last_level_reached?
  end

  def greeting_message
    image = ['  _o_ ',
             '\(*-*)/ |Last level',
             '  |||   |', 
             ' _/ \_  |']
    image.each { |i| puts green i }
  end

  def last_level_reached?
    ObjectSpace.each_object(self.class).count == LAST_LEVEL
  end
end

5.times { SomethingLikeMario.new }
