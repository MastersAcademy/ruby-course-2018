#p "Enter time zone"
#time = gets.chomp
#case time
#when "-3"
#time = Time.now.utc -3.hour
#when "-5"
#time = Time.now.utc -5.hour
#when "+5"
#time = Time.now.utc +5.hour
#when "+1"
#time = Time.now.utc +12.hour
#end
#  Argentina:  "-03"
#  Ecuador:    "-05"
#  Maldives:   "+05"
#  Tuvatu:     "+12"
sign, zone = ARGV.first.split('')
p Time.now.getlocal("#{sign}0#{zone}:00")
