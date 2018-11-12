p "enter first value"
first_value = gets.chomp.to_i
p "enter second value"
second_value = gets.chomp.to_i
p "enter plus or minus, sum or div"
v = gets.chomp
case v
when "plus"
  result = first_value + second_value
when "minus"
  result = first_value - second_value
when "sum"
  result = first_value * second_value
when "div"
  result = first_value / second_value
end
p "final result of #{v} is #{result}"
