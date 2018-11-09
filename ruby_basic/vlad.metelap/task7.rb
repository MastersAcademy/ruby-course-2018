class Task7
  def arr_random(str_arr)
    arr = str_arr.split(",")
    arr_size = arr.length
    rand_num = rand(arr_size)
    arr[rand_num]
  end

end

str_arr = ARGV[0]
res = Task7.new.arr_random(str_arr.to_s)
puts res