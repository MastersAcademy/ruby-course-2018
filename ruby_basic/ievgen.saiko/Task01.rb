require 'json'

class Task01
  def self.tlocal(tz)
    time_local = Time.now.getlocal(tz)
  end
end

timee_zones = {}
file = File.read('TimeZones.json')
time_zones = JSON.parse(file)

request = ARGV[0]
tz = time_zones[request.to_s]

case tz
  when nil
    puts "No data for such timecode or incorrect data format. Try arain, please"
  else
    puts Task01.tlocal(tz)
end
