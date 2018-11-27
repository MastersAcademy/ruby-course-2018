class Calculator
	attr_reader :arg1, :arg2

	def initialize(arg1: 0, arg2: 0)
		@arg1 = arg1.to_i
		@arg2 = arg2.to_i
	end

	def sum
		arg1 + arg2
	end

	def	mult
		arg1 * arg2
	end

	def divide
		begin
			arg1 / arg2
		rescue ZeroDivisionError
			"hi. dont do that again"	
		end
	end

	def subt
		arg1 - arg2
	end
end

first_argument  = ARGV.first
second_argument = ARGV[1]
operation       = ARGV.last.to_sym

a = Calculator.new(arg1: first_argument, arg2: second_argument)
p a.send(operation)