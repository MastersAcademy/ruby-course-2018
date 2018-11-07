class BooleanToStrInt

	require 'objspace'
	
	def initialize
		puts "Input 'true' or 'false'"
		@boolean_string = gets.chomp
		@bool_to_int = @boolean_string == 'true' ? 1 : 0

	end

	def boolean_size_str
		mem_size_str = ObjectSpace.memsize_of(@boolean_string)
	end

	def boolean_size_int
		mem_size_str = ObjectSpace.memsize_of(@bool_to_int)
	end

	start_boolean = BooleanToStrInt.new

	puts "Memory size of string type: #{start_boolean.boolean_size_str}"	
	puts "Memory size of integer type: #{start_boolean.boolean_size_int}"

#Странный вывод 40 для строки и 0 для целого

end