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

count = 0
File.open(filename, "r") do |f|
  f.each do |line|
    count +=1
    if line.match(/\b#{word}\b/i)
      puts "#{word} was found on line #{count}"
      exit
    end
 end
 puts 'not found this word'
end
