p "enter first value"
  a = gets.chomp.to_i
p "enter second value"
  b = gets.chomp.to_i
p "enter plus or minus, sum or div"
  v = gets.chomp
case v
  when "plus"
    c = a + b
  when "minus"
    c = a - b
  when "sum"
    c = a * b
  when "div"
    c = a / b
end
p "final result of #{v} is #{c}"
