class TimeZone
  def initialize(location)
    @location = location.to_sym
  end

  HASH_TIMEZONES = {
    Canada:    "-06:00",
    Havaii:    "-10:00",
    Tokio:     "+09:00",
    Praga:     "+01:00",
    Alaska:    "-09:00"
}.freeze

  def timeZoneChange
    Time.now.localtime(HASH_TIMEZONES[@location])
  end
end

locations = TimeZone.new(gets.chomp)
puts locations.timeZoneChange
