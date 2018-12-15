# frozen_string_literal: true

# Methods for Tamagotchi actions
module TamagotchiActionsAPI
  def tamagotchi_health
    tamagotchi.decrease_health
    health = tamagotchi.dead? ? 'dead' : tamagotchi.health.to_s
    Http.format_response :ok, :plain_text, health
  end

  def request_tamagotchi_action(params)
    tamagotchi.send(params['action'])
    Http.empty_response :ok
  end
end
