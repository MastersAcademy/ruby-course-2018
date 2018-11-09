first_arr = gets.chomp.split(",").map(&:to_i)
second_arr = gets.chomp.split(",").map(&:to_i)

def arr_common_elem(a, b)
  a & b
end

p arr_common_elem(first_arr, second_arr)
