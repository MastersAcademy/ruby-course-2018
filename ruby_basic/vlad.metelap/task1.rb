class Task1

  def self.current_time
    Time.now.utc
  end
  def self.utc(time_utc)
    puts "UTC time: #{time_utc.strftime('%H:%M')}"
  end

  def self.eat(time_utc)
    time_eat = time_utc + (60 * 60 * 3)
    puts "EAT time: #{time_eat.strftime('%H:%M')}"
  end

  def self.cet(time_utc)
    time_cet = time_utc + (60 * 60)
    puts "CET time: #{time_cet.strftime('%H:%M')}"
  end

end

time_zone = ARGV[0]
case time_zone
when "utc"
  Task1.utc(Task1.current_time)
when "eat"
  Task1.eat(Task1.current_time)
when "cet"
  Task1.cet(Task1.current_time)
else
  puts "we support only UTC/EAT/CET timezones"
end