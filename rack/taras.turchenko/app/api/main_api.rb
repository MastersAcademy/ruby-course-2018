# frozen_string_literal: true

# Common api methods
module MainAPI
  def index
    initialize_tamagotchi
    content = File.read './app/views/index.html'
    Http.format_response :ok, :html, content
  end

  def initialize_tamagotchi
    self.tamagotchi = Tamagotchi.new
  end

  def not_found_page(requested_path)
    body = "Not found route #{requested_path}"
    Http.format_response :not_found, :html, body
  end
end
