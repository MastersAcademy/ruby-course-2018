ARGV.each do|a|
  puts a.split("").sort.reverse.join(" ")
end