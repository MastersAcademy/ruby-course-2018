# Input example: ruby yourscript.rb UTC

require 'time'

class Timezones
  def initialize(wonted_time)
    @wonted_time = wonted_time
    @time_now = Time.now
  end

  def method_missing(new_method)
    time_zone(new_method)
  end

  def time_zone(new_zone)
    @time_now + Time.zone_offset(new_zone.upcase.to_s)
  end
end

if ARGV.length != 1
  puts 'We need exactly 1 arguments!'
  exit
end
zone_name = ARGV[0]
timezona = Timezones.new(zone_name)
puts timezona.send(zone_name)
