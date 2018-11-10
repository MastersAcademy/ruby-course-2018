abort("Wrong number of arguments!") unless ARGV.length.eql?(3)

x = ARGV[0]
y = ARGV[1]
operation = ARGV[2]

class String
	def is_number?
		true if Float(self) rescue false
	end
end

abort("Wrong type!") unless x.is_number? && y.is_number?

x = Float(x)
y = Float(y)

class Calculator
	@@allowed = ['sum', 'subtract', 'divide', 'multiply']

	def self.allowed?(name)
		@@allowed.include?(name)
	end

	def initialize(a, b)
		@a = a
		@b = b
	end	

	def sum
		@a + @b
	end

	def subtract
		@a - @b
	end

	def divide
		if @b != Float(0)
			@a / @b
		else
			'Division by 0 is not allowed!'
		end
	end

	def multiply
		@a * @b
	end
end

data = Calculator.new(x, y)

puts (Calculator.allowed?(operation) && data.respond_to?(operation)) ? "Result: #{data.send(operation)}" : "Not allowed!"