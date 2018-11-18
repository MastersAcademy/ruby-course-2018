sign, zone = ARGV.first.split('')
p Time.now.getlocal("#{sign}0#{zone}:00")
