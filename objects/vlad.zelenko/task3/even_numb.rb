class EvenNumb
  def initialize(arr) 
    @arr = arr.map(&:to_i)
  end

  def out_even_numb
    @arr.select(&:even?)
  end
end

even_numb = EvenNumb.new(["0", 1, 2, 3, 4, "1", 1, "1.3", 1.3, 5, "6", 8, 9, "2,0"])
p even_numb.out_even_numb
