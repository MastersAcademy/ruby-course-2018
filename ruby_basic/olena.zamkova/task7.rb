data = Array .new

ARGV.each do |item|
	data.push(item)
end

puts "Randomly selected item: #{data.sample}"