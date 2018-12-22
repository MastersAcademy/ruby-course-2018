class ApplicationController
  def respond_with(status, data)
    require 'json'

    headers = {
        'Access-Control-Allow-Methods' => '*',
        'Access-Control-Allow-Origin' => '*',
        'Access-Control-Allow-Headers' => '*',
        'Content-Type' => 'application/json'
    }

    [status, headers, [data.to_json]]
  end
end