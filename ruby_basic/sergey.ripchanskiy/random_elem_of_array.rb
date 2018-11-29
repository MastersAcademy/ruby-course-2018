# TASK #7. The script that takes an array and output random element
class RandomArray
  def initialize
    @arr = ARGV
  end

  def random_elem
    puts @arr.sample
  end
end
RandomArray.new.random_elem
# type in console ruby - random_elem_of_array.rb Vasya Kolya Petya Misha
