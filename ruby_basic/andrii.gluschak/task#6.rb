p "enter first value"
first_value = gets.chomp.to_i
p "enter second value"
second_value = gets.chomp.to_i
p "enter plus or minus, sum or div"
v = gets.chomp
result =
case v
when "plus"
  first_value + second_value
when "minus"
  first_value - second_value
when "sum"
  first_value * second_value
when "div"
  first_value / second_value
end
p "final result of #{v} is #{result}"
