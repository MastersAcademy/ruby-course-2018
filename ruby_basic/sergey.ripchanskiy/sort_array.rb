# TASK #8. The script that takes an array,sorts by descending,output to console
class SortArray
  def initialize
    puts 'Type the NUMERICAL value of array with a comma:'
    @arr = gets.chomp.split(',')
  end

  def sort_array
    puts 'This is sorted by descending array:'
    puts @arr.sort.reverse
  end
end
SortArray.new.sort_array
