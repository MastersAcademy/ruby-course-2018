if ARGV.length != 2
	puts "Should be two parametres filename and search text"
	exit
end

file_name = ARGV[0].to_s
search_line = ARGV[1].to_s
line_count = 0

File.foreach (file_name) do |line|
	line_count +=1
	if line.match(search_line)
		puts "First line with string #{search_line} is #{line_count}"
		exit
	end
end

puts "No text #{search_line} found"
