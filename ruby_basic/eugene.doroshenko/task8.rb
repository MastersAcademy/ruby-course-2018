class ArySort
	
	def initialize
		puts "Devide array elements by space. Your array is:"
		@arr_string = gets.chomp
	end

	def str_to_array
		arr = Array.new
		arr = @arr_string.split(" ")
		arr.sort.reverse
	end

end

start_string = ArySort.new
puts "Sorted Array is #{start_string.str_to_array}"
