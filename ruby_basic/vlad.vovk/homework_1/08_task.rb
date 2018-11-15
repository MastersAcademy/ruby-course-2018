def array_sort_reverse(array)
    array.sort.reverse
end

argument  = (1..20).collect { rand(1..30) }
p array_sort_reverse argument
