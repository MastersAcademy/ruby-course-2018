# require_relative 'run.rb'
require 'json'

HEADERS = {
  'Access-Control-Allow-Methods' => '*',
  'Access-Control-Allow-Origin'  => '*',
  'Access-Control-Allow-Headers' => '*',
  'Content-Type' => 'application/json'
}.freeze

def respond_with(status, body)
  [status, HEADERS, [body.to_json]]
end

application = proc do |env|
  if env['PATH_INFO'] == '/api/v1/' && env['REQUEST_METHOD'] == 'GET'
    [
      200,
      HEADERS,
      {'Content-Type' => 'application/json'},
        [
          {
            health: 100,
            hunger: 100,
            happiness: 100,
            sleepiness: 100,
            mood: 'sad',
            event: 'play',
            dead: false
          }.to_json
        ]
    ]
  elsif env['PATH_INFO'] == '/api/v1/' && env['REQUEST_METHOD'] == 'GET'
    elsif

    else
    [
      404,
      {'Content-Type' => 'application/json'},
      [{ error: true, message: 'Not found'}.to_json]
    ]
  end
end

run application