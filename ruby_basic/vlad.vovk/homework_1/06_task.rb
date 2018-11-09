class Calculator
	attr_accessor :arg1, :arg2

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

first  = ARGV.first
second = ARGV[1]
third  = ARGV.last.to_sym

a = Calculator.new(arg1: first, arg2: second)
p a.send(third)