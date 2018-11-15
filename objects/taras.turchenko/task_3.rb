def is_number?(value)
  value.to_f.to_s == value.to_s || value.to_i.to_s == value.to_s
end

# @param [Array] array
def get_even_numbers(array)
  array.select do |item|
    is_number?(item) && item.to_i.even?
  end
end

array = ARGV

puts get_even_numbers array