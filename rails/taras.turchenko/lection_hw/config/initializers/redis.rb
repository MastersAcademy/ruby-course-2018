Redis.current ||= Redis::Namespace.new(url: ENV['REDIS_URL'])
