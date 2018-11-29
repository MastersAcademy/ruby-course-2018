# Script takes a timezone as a text and displays the current time in a given timezone.
# Input example: ruby yourscript.rb UTC
# Script should not use third-party gems and should support 3-5 times.

TIMEZONES = {cet: '+01:00', eet: '+02:00', est: '-05:00', egypt: '+02:00', cuba: '-05:00'}.freeze

def current_time(timezone)
  obtained_timezone = TIMEZONES[timezone]
  return "Unsupported key provided. Supported keys are: #{TIMEZONES.keys}!" unless obtained_timezone
  Time.now.localtime(obtained_timezone)
end

timezone = gets.chomp.to_sym.downcase
puts current_time(timezone)
