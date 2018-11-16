class A
  def self.even_numbers(array)
    array.delete 0
    array.select { |i| i.to_i.even? if i.is_a?(Integer) || i.to_i.nonzero?} 
  end
end
