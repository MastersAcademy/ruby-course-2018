# Realize a class that selects all of the even numbers from the array. An array can consist not only of numbers.

class Numbers
  def initialize(*args)
    @args = args
  end

  def even_elements
    @args.flatten.select do |elem|
      (elem.to_f % 2).zero?
    end
  end
end

arr = [4.0, 4.5, 0, '212', '124', 1, 2, 3, 4, 5, 6, 0]
puts Numbers.new(arr).even_elements
