# require_relative 'run.rb'
require 'json'
require_relative 'app/models/pet'

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
  @pet ||= Pet.new
  if env['PATH_INFO'] == '/api/v1/' && env['REQUEST_METHOD'] == 'GET'
    respond_with(200, entity: @pet.to_json)
  elsif env['PATH_INFO'] == '/api/v1/rest/' && env['REQUEST_METHOD'] == 'POST'
    @pet.rest
    respond_with(200, entity: @pet.to_json)
  elsif env['PATH_INFO'] == '/api/v1/play/' && env['REQUEST_METHOD'] == 'POST'
    @pet.play
    respond_with(200, entity: @pet.to_json)
  elsif env['PATH_INFO'] == '/api/v1/feed/' && env['REQUEST_METHOD'] == 'POST'
    @pet.feed
    respond_with(200, entity: @pet.to_json)
  else
    respond_with 404, error: true, message: 'Not found'
  end
end

run application