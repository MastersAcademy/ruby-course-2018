filename = ARGV[0]
word = ARGV[1]

unless ARGV.size == 2
  puts 'Wrong argumet'
  exit
end

unless File.exists?(filename)
  puts 'File not found'
  exit
end

File.open(filename, "r") do |f|
  f.each_with_index do |line, index|
    if line.match(/\b#{word}\b/i)
      puts puts "#{word} was found on line #{index + 1}"
      exit
    end
 end
 puts 'not found this word'
end
