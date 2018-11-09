def random_obj(array)
    array.sort.reverse
end

first  = (1..20).collect { rand(1..30) }
p random_obj first
