# frozen_string_literal: true

require_relative './base'

# Tamagotchi staff
module TamagotchiAPI
  def stats(_params = nil)
    tamagotchi.decrease_random_attr
    format_stats
  end

  def do_action(params)
    tamagotchi.send params['event'].to_sym
    format_stats
  end

  def format_stats
    BaseAPI.format_response 200, entity: tamagotchi.capture_attrs
  end
end