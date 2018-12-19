# frozen_string_literal: true

require_relative './base'

# Tamagotchi staff
module TamagotchiAPI
  def sync
    BaseAPI.format_response(
      200,
      entry: {
        health: 100,
        hunger: 100,
        happiness: 100,
        sleepiness: 100,
        mood: 'sad',
        event: 'rest',
        dead: false
      }
    )
  end
end