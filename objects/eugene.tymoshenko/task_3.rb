class Numbers
  def initialize(*args)
    @args = args
  end

  def even_elements
    @args.flatten.select do |elem|
      elem if elem.is_a?(Integer) && elem.even?
    end
  end
end

arr = [nil, false, '212', '123', 1, 2, 3, 4, 5, 6]
puts Numbers.new(arr).even_elements