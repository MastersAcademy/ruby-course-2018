# TASK #3. The script that takes 2 array,and output identical el to console
class IdenticalArray
  def identical_arr
    arrays = ARGV
    first_array =  arrays[0].split(',')
    second_array = arrays[1].split(',')
    puts first_array.select { |el| second_array.include? el }.uniq
  end
end
IdenticalArray.new.identical_arr
# type ruby arrays_identical_elements.rb 1,1,1,3 34,1,6,3
