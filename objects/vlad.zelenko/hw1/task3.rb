first_arr = gets.chomp.split(",")
second_arr = gets.chomp.split(",")


def arr_common_elem(a, b)
  a & b
end

p arr_common_elem(first_arr, second_arr)