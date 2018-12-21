# frozen_string_literal: true

require_relative './base'

# Tamagotchi staff
module TamagotchiAPI
  def stats(_params = nil)
    BaseAPI.format_response 200, entity: tamagotchi.capture_attrs
  end

  def do_action(params)
    tamagotchi.send params['event'].to_sym
    stats
  end
end