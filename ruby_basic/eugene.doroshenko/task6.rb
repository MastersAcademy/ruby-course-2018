class MathOperations

	def initialize
		puts "Input first element"
		@el1 = gets.chomp.to_i
		puts "Input second element"
		@el2 = gets.chomp.to_i
	end

	def element_result
		puts "Would you like to [a]dd, [s]ubstruct, [m]ultiply or [d]ivide?"
		math_op = gets.chomp
		case math_op
		when 'a'
			sum(@el1, @el2)
		when 's'
			substruct(@el1, @el2)
		when 'd'
			divide(@el1, @el2)
		when 'm'
			multiplicate(@el1, @el2)
		end
	end

	def sum(operand1, operand2)
		operand1 + operand2
	end

	def divide(operand1, operand2)
		operand1.to_f / operand2.to_f
	end

	def multiplicate(operand1, operand2)
		operand1 * operand2
	end

	def substruct(operand1, operand2)
		operand1 - operand2
	end

	element_start = MathOperations.new

	puts "result is: #{element_start.element_result}"

end
