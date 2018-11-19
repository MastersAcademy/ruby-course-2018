ZONES = {
  kyiv: '+03:00',
  london: '00:00',
  new_york: '-06:00',
  astana: '+06:00',
  tokyo: '+09:00'
  }.freeze

def local_time(timezone)
  settled_time = ZONES[timezone]
  return "Choose from #{ZONES.keys.to_s}!" unless settled_time #так і не зрозумів, як ключі хеша можна вивести не через масив
  Time.now.localtime(settled_time)
end

timezone = gets.chomp.to_sym
p local_time(timezone)