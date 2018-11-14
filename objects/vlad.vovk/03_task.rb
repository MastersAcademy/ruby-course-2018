class A
  def self.even_number(array)
    array.select { |i| i.even? if i.is_a? Integer}
  end
end
  