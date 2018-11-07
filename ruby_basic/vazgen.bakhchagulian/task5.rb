str=ARGV[1]
counter = 0
File.open(ARGV[0]) do |f|
  while (line = f.gets)
    counter += 1
    if line.chomp == str
      puts counter
      break
    end
  end
end