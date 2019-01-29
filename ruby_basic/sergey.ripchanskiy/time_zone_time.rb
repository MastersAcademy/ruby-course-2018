# TASK #2 Receive text file and color and input colored to console
class TimeZone
  @@time_utc = Time.now.utc

  def recieve_data
    @params = ARGV
    time_zone = @params[0].downcase
    send time_zone
  end

  def utc
    "UTC time: #{@@time_utc.strftime('%H:%M')}"
  end

  def eat
    time_eat = @@time_utc + (60 * 60 * 3)
    "EAT time: #{time_eat.strftime('%H:%M')}"
  end

  def cet
    time_cet = @@time_utc - (60 * 60)
    "CET time: #{time_cet.strftime('%H:%M')}"
  end
end
puts TimeZone.new.recieve_data
# type ruby time_zone_time.rb UTC/CET/EAT
