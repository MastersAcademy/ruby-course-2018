@timezones = {
    'America/Anchorage' => '-09:00',
    'Europe/London' => '+00:00',
    'Europe/Paris' => '+01:00',
    'Europe/Kyiv' => '+02:00',
    'Europe/Minsk' => '+03:00'
}

def get_time(timezone)
  time = Time.now
  format = @timezones[timezone]
  if timezone == 'UTC'
    return time.utc
  end
  time.localtime format
end

ARGV.each do |timezone|
  puts "Time in #{timezone}: #{get_time timezone}"
end