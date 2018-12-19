# frozen_string_literal: true

require 'json'

# Base API
module BaseAPI
  HEADERS = {
    'Access-Control-Allow-Methods' => '*',
    'Access-Control-Allow-Origin' => '*',
    'Access-Control-Allow-Headers' => '*',
    'Content-Type' => 'application/json'
  }.freeze

  def self.format_response(status, body)
    [status, HEADERS, [body.to_json]]
  end

  def self.page_404
    format_response(
      404,
      error: true,
      message: 'Page not found'
    )
  end
end