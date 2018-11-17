class A
  def self.even_numbers(array)
    array.select do |i|
      unless i.is_a? Symbol
        i.to_i.even? if i.is_a?(Integer) || i.to_i.nonzero?
      end
    end
  end
end
