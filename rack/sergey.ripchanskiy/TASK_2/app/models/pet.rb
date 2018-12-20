
class Pet
  attr_accessor :name, :kind, :mood, :health, :energy

  def initialize(name: nil, kind: nil, mood: 3, health: 2, energy: 3)
    @name = name
    @kind = kind
    @mood = mood
    @health = health
    @energy = energy
  end
end
