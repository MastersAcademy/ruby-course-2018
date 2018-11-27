class TimeZone
  UTC = {
    austria: '+01:00',
    azerbaijan: '+04:00',
    azores: '-01:00',
    barbados: '-04:00',
    bahrain: '+03:00',
    gambia: '00:00',
    guatemala: '-06:00',
    guam: '+10:00'
  }
  
  def self.show_time(user_input)
    Time.now.getlocal(UTC[user_input]) if UTC.has_key? user_input
  end
end

input = ARGV.first.to_sym
p TimeZone.show_time input