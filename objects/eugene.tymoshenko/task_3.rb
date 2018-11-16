# Realize a class that selects all of the even numbers from the array. An array can consist not only of numbers.

class Numbers
  def initialize(*args)
    @args = args
  end

  def even_elements
    @args.flatten.select do |elem|
      elem if elem.to_s.to_i.even?
    end
  end
end

arr = [nil, false, 4.0, 0, '212', 'asd124', 1, 2, 3, 4, 5, 6, 0]
puts Numbers.new(arr).even_elements
