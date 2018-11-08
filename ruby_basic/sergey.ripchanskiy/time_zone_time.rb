# TASK #2 Receive text file and color and input colored to console
class TimeZone
  @@time_utc = Time.now.utc

  def recieve_data
    @params = ARGV
    @time_zone = @params[0].to_s.downcase
    @time_now = Time.now
    self.send(@time_zone.to_sym)
  end

  def utc
    puts "UTC time: #{@@time_utc.strftime('%H:%M')}"
  end

  def eat
    time_eat = @@time_utc + (60 * 60 * 3)
    puts "EAT time: #{time_eat.strftime('%H:%M')}"
  end

  def cet
    time_cet = @@time_utc + (60 * 60)
    puts "CET time: #{time_cet.strftime('%H:%M')}"
  end
end
TimeZone.new.recieve_data
# type ruby time_zone_time.rb UTC/CET/EAT
