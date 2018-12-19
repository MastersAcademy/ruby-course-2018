# frozen_string_literal: true

# Tamagotchi model
class Tamagotchi
  def capture_attrs
    {
      health: 50,
      hunger: 100,
      happiness: 100,
      sleepiness: 100,
      mood: 'sad',
      event: 'rest',
      dead: false
    }
  end
end