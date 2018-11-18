require_relative './dynamic_math'
require_relative './colorized_string'

module ColorizedMath
	def random_colorizing(string)
		color = String::COLORS.keys.sample
		string.send color
	end

	DynamicMath::OPERATIONS.each do |name, operation|
		define_method(name) do
			result = a.send(operation, b)
			random_colorizing "#{a} #{operation} #{b} = #{result}"
		end
	end
end

class DynamicMath
	include ColorizedMath
end

first_number, operation, second_number = ARGV

math = DynamicMath.new(first_number, second_number)
DynamicMath.operation? operation
puts math.send operation
