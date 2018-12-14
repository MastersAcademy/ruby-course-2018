module Http
  RESPONCE = {
    html: {'Content-Type' => 'text/html'}.freeze,
    json: {'Content-Type' => 'application/json'}.freeze,
    plain_text: {'Content-Type' => 'text/plain'}.freeze
  }.freeze

  CODES = {
    ok: 200,
    not_found: 404
  }.freeze

  def self.format_response(status, headers_preset, body)
    [Http::CODES[status], Http::RESPONCE[headers_preset], [body]]
  end

  def self.empty_response(status)
    [Http::CODES[status], {}, ['']]
  end
end
