class CommonValues
	
	def initialize
		puts "Arrays devided by emty element. Enter alements of first array."
		@array1 = list_of_elements
		puts "Enter elements of second array"
		@array2 = list_of_elements
	end

	def list_of_elements
		array = []
		element = gets.chomp
		while element != '' && element != nil
			array = array.push element
			element = gets.chomp
		end
		puts "Array is: #{array}"
		return array
	end

	def common_elements
		common_array = Array.new
		common_array = @array1 & @array2
	end

	arrays = CommonValues.new
	puts "Common elements are: #{arrays.common_elements}"

end
