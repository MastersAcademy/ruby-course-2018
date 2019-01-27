# require_relative 'run'
require 'json'

application = proc do |env|
  if env['PATH_INFO'] == '/api/v1' && env['REQUEST_METHOD'] == 'GET'
    [
        200,
        { 'Content_Type' => 'application/json' },
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
  else
    [
        404,
        { 'Content_Type' => 'application/json' },
        [{error: true, message: 'Not found'}.to_json]
    ]
  end
end

run application
