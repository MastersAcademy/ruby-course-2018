def random_obj(array)
  array.sample
end

first  = (1..20).collect { rand(1..30) }
p random_obj first
