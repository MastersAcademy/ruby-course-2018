class EvenNumb
  def initialize(arr) 
    @arr = arr
  end

  def out_even_numb
    @arr.each { |x| puts x if x.is_a?(Numeric) && x.even? }
  end
end

even_numb = EvenNumb.new([1, 2, 3, 4, "two", "seven", 5, 6, 8, 9])
even_numb.out_even_numb
