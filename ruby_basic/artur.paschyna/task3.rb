class Task3
  b=[]
  a=[]
  l=ARGV.length
  for i in 0..l
    if i%2==0
      a<<ARGV[i]
    else
      b<<ARGV[i]
    end
  end
  puts a&b
end