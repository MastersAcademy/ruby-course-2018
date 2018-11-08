class Task6
  if ARGV[0]=="sum"
    puts ARGV[1].to_i+ARGV[2].to_i
  elsif ARGV[0]=="diff"
    puts ARGV[1].to_i-ARGV[2].to_i
  elsif ARGV[0]=="mult"
    puts ARGV[1].to_i*ARGV[2].to_i
  elsif ARGV[0]=="div"
    puts ARGV[1].to_i/ARGV[2].to_i
  else
    puts "Try again =)"
  end
end