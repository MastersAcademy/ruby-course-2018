require './dynamic_math'

class DynamicMath
  OPERATIONS.each do |name, operation|
    define_method(name) do
      result = a.send(operation, b)
      "#{a} #{operation} #{b} = #{result}"
    end
  end
end

first_number, operation, second_number = ARGV

math = DynamicMath.new(first_number, second_number)
DynamicMath.has_operation? operation
puts math.send operation
