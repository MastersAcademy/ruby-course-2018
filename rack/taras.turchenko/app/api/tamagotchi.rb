# frozen_string_literal: true

require_relative './base'

# Tamagotchi staff
module TamagotchiAPI
  def stats
    BaseAPI.format_response 200, entity: tamagotchi.capture_attrs
  end

  def play
    do_action :play
  end

  def feed
    do_action :feed
  end

  def do_action(action)
    tamagotchi.send action
    BaseAPI.format_response 200, entity: tamagotchi.capture_attrs
  end
end