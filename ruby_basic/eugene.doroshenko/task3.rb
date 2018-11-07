class CommonValues
	
	def initialize

		@array1 = list_of_elements

		@array2 = list_of_elements
	end

	def list_of_elements
#		@array = []
#		element = gets.chomp
#		while 
#			element != ''
#			element = gets.chomp
#			@array = @array.push element
#			puts @array
#		end
	end

	def common_elements
		common_array = Array.new
		common_array = @array1 & @array2
	end

	arrays = CommonValues.new
	puts "Common elements are #{arrays.common_elements}"

end