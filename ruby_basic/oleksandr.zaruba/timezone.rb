# Скрипт приймає таймзону в виді тексту та виводить поточний час в заданій таймзоні
# Input example: ruby yourscript.rb UTC
# Скрипт не повинен використовувати сторонніх гемів Скрипт повинен підтримувати 3-5 таймзон.

require 'date'

class Timezones
  def initialize(time_in)
    @time_in = time_in
  end

  def method_missing(new_method)
    time_zone(new_method)
  end

  def time_zone(zone)
    `zdump "#{zone.upcase}"`
  end
end

timezona = Timezones.new(ARGV[0])

if ARGV.length != 1
  puts 'We need exactly 1 arguments!'
  exit
end
puts timezona.send(ARGV[0])
