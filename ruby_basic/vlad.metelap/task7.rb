class Task7

  def self.arr_random(str_arr)
    arr = str_arr.split(",")
    random_element = arr.sample
  end
end
str_arr = ARGV[0]
res = Task7.arr_random(str_arr.to_s)
puts res