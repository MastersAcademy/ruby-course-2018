class Task03

  def self.common_arr(arr1, arr2)
    arr1.split(",") & arr2.split(",")
  end

end

puts "Enter elements of the first array"
arr1 = gets.chomp.to_s
puts "Enter elements of the second  array"
arr2 = gets.chomp.to_s

new_arr = Task03.common_arr(arr1, arr2)
print "New array with common element = #{new_arr}\n"
