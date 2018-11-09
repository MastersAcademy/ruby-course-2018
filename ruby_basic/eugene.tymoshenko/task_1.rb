# Скрипт приймає таймзону в виді тексту та виводить поточний час в заданій таймзоні
# Input example: ruby yourscript.rb UTC
# Скрипт не повинен використовувати сторонніх гемів Скрипт повинен підтримувати 3-5 таймзон.

TIMEZONES = {cet: '+01:00', eet: '+02:00', est: '-05:00', egypt: '+02:00', cuba: '-05:00'}.freeze

def current_time(timezone)
  obtained_timezone = TIMEZONES.dig(timezone)
  return "Unsupported key provided. Supported keys are: #{TIMEZONES.keys}!" if obtained_timezone.nil?
  Time.now.localtime(obtained_timezone)
end

timezone = gets.chomp.to_sym.downcase
puts current_time(timezone)
