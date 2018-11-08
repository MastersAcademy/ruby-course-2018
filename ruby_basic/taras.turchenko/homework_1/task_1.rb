TIMEZONES = {
    'America/Anchorage': '-09:00',
    'Europe/London': '+00:00',
    'Europe/Paris': '+01:00',
    'Europe/Kyiv': '+02:00',
    'Europe/Minsk': '+03:00'
}.freeze

# @param [Symbol] timezone
def get_localtime(timezone)
  return Time.now.utc if timezone == :UTC
  format = TIMEZONES[timezone]
  !format.nil? ? Time.now.localtime(format) : '[ERROR] Incorrect timezone'
end

ARGV.each do |timezone|
  puts "Time in #{timezone}: #{get_localtime timezone.to_sym}"
end
