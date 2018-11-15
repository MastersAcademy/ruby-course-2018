class Task6
  def find_the_result(operation, first_value, second_value)
    if operation == "sum"
      puts first_value.to_i + second_value.to_i
    elsif operation == "diff"
      puts first_value.to_i - second_value.to_i
    elsif operation == "mult"
      puts first_value.to_i * second_value.to_i
    elsif operation == "div"
      puts first_value.to_i / second_value.to_i
    else
      puts "Try again =)"
    end
  end
end
ftr = Task6.new
ftr.find_the_result(ARGV[0],ARGV[1],ARGV[2])