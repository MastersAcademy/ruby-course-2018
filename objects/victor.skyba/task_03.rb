class Pair
  def even_n(conv)
    s_numb = conv.map(&:to_i)
    s_numb.select do |item|
      (item % 2).zero?
    end
  end
end

a = [4, 6, '10', 11, 12, 1008, 3.3, 2.0]
puts Pair.new.even_n(a)