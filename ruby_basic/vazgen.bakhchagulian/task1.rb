require 'json'
timezones = JSON.parse(File.read('timezones.json'))
src = ARGV[0].downcase

timezones.each do |f|
  if ((f["value"].downcase.include? src) ||
      (f["abbr"].downcase.include? src) ||
      (f["text"].downcase.include? src) ||
      (f["utc"].any? {|a| a.downcase.include? src}))
    puts f["abbr"] + " - " + f["value"] + " - " + (Time.now.utc + f["offset"].to_i * 3600).to_s.sub(/ UTC/, '')
    puts f["text"] + "\n"
  end
end