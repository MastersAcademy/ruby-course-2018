def get_uniq(arr1, arr2)
  arr1.select { |i| arr2.include? i }.uniq
end

p first  = (1..20).collect { rand(1..30) }
p second = (1..20).collect { rand(1..30) }

p get_uniq(first, second)