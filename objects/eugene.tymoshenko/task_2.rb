require './game_actions'

class MarioGame
  include GameActions
  attr_accessor :level_background, :count_of_enemies, :speed_enemies
  attr_reader :id

  class << self
    def define_last_level_notice
      last_2_objects = ObjectSpace.each_object(MarioGame).to_a.sort_by(&:id).last(2)
      last_2_objects.first.instance_eval('undef :final_game_notice') rescue nil
      last_2_objects.last.define_singleton_method :final_game_notice, -> { "last level reached. Last level: #{@id}" }
    end
  end

  def initialize(level_background, count_of_enemies, speed_enemies)
    @background    = level_background
    @enemies       = count_of_enemies
    @speed_enemies = speed_enemies
    @id            = ObjectSpace.each_object(MarioGame).count
    add_last_level_notice
  end

  def add_last_level_notice
    self.class.define_last_level_notice
  end
end

COLORS = %w[green red blue deepskyblue purple magento].freeze
b = binding
20.times do |index|
  b.local_variable_set("mario#{index.next}", MarioGame.new(COLORS.sample, rand(100), rand(30)))
end

p b.local_variable_get(:mario7).final_game_notice rescue p 'No such method'
p b.local_variable_get(:mario20).final_game_notice
