# frozen_string_literal: true

# API methods for public content
module CommonAPI
  def start
    initialize_tamagotchi
    Http.empty_response :ok
  end

  def initialize_tamagotchi
    self.tamagotchi = Tamagotchi.new
  end

  def not_found_page(requested_path)
    body = "Not found route #{requested_path}"
    Http.format_response :not_found, :html, body
  end
end
