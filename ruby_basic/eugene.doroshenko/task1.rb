# time zones 
# EST Brazil/East America/Los_Angeles Asia/Tokyo

ARGV.each do |time_zone|
	ENV['TZ'] = time_zone
	loc_time = Time.now 
	puts "Local time in #{loc_time.strftime( '%Z is %H-%M-%S   %::z' )}"
end
