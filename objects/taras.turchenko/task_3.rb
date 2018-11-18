def is_number?(value)
	value.to_f.to_s == value.to_s || value.to_i.to_s == value.to_s
end

def get_even_numbers(array)
	array.select { |item| is_number?(item) && item.to_i.even? }
end

puts get_even_numbers ARGV
