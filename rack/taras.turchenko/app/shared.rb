# frozen_string_literal: true

# HTTP helpers
module Http
  CONTENT_TYPE = {
    plain_text: 'text/plain'
  }.freeze

  CODES = {
    ok: 200,
    not_found: 404
  }.freeze

  def self.format_response(status, content_type, body)
    headers = { 'Content-Type' => Http::CONTENT_TYPE[content_type] }
    [Http::CODES[status], headers, [body]]
  end

  def self.empty_response(status)
    [Http::CODES[status], {}, ['']]
  end

  def self.format_static_responce(status, content_type, file_path)
    content = File.read "./app/public/#{file_path}"
    Http.format_response status, content_type, content
  end
end
