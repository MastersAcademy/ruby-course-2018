TIMEZONES = {
    'America/Anchorage': '-09:00',
    'Europe/London': '+00:00',
    'Europe/Paris': '+01:00',
    'Europe/Kyiv': '+02:00',
    'Europe/Minsk': '+03:00'
}.freeze

# @param [Symbol] timezone
def get_localtime(timezone)
  time = Time.now

  if timezone == :UTC
    return time.utc
  end

  if TIMEZONES.key? timezone
    format = TIMEZONES[timezone]
    time.localtime format
  else
    '[ERROR] Incorrect timezone'
  end
end

ARGV.each do |timezone|
  puts "Time in #{timezone}: #{get_localtime timezone.to_sym}"
end