path = ARGV[0]
str = ARGV[1]

abort('Wrong number of arguments!') unless ARGV.length.eql?(2)

abort('File not found.') unless File.file?(path)

contains = false
counter = 0

File.open(path, 'r').each do |line|
  counter += 1
  break if (contains = line.include? str)
end

puts contains ? "#{str} first time occurs in line #{counter}" : 'Not found'
