# frozen_string_literal: true

require_relative './base'

# Tamagotchi staff
module TamagotchiAPI
  def sync
    BaseAPI.format_response 200, entity: tamagotchi.capture_attrs
  end
end