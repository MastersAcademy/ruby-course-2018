class Task6
  def addition(a,b)
    puts a.to_i+b.to_i
  end

  def difference(a,b)
    puts a.to_i-b.to_i
  end

  def multiplication(a,b)
    puts a.to_i*b.to_i
  end

  def division (a,b)
    puts a.to_i/b.to_i
  end
end

a,b,operation = ARGV
add = Task6.new
diff = Task6.new
mult = Task6.new
div = Task6.new

if operation == "sum"
 add.addition(a,b)
elsif operation == "diff"
  diff.difference(a,b)
elsif operation == "mult"
  mult.multiplication(a,b)
elsif operation == "div"
  div.division(a,b)
end