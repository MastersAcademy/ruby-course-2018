# frozen_string_literal: true

# Methods for Tamagotchi actions
module TamagotchiActionsAPI
  def tamagotchi_health
    tamagotchi.decrease_health
    health = tamagotchi.dead? ? 'dead' : tamagotchi.health.to_s
    Http.format_response :ok, :plain_text, health
  end

  def feed_tamagotchi
    request_tamagotchi_action(:to_feed)
  end

  def request_tamagotchi_action(action)
    tamagotchi.send(action)
    Http.empty_response :ok
  end

  def put_to_bad_tamagotchi
    request_tamagotchi_action(:put_to_bad)
  end

  def play_in_game_with_tamagotchi
    request_tamagotchi_action(:play_game)
  end
end
