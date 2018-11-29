class BooleanToStrInt

	require 'objspace'
	
	def initialize
		puts "Input 'true' or 'false'"
		@bln_string = gets.chomp
		if @bln_string == 'true' || @bln_string =='1'
			@bln_to_int = 1
		else
			@bln_to_int = 0
		end
	end

	def boolean_size_str
		ObjectSpace.memsize_of(@bln_string)
	end

	def boolean_size_int
		ObjectSpace.memsize_of(@bln_to_int)
	end

end

start_boolean = BooleanToStrInt.new

puts "Memory size of string type: #{start_boolean.boolean_size_str}"	
puts "Memory size of integer type: #{start_boolean.boolean_size_int}"

#Странный вывод 40 для строки и 0 для целого
