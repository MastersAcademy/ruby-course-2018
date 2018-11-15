class Task3

  def common_elements( str_arr, str_arr2 )
    arr = str_arr.split(",")
    arr2 = str_arr2.split(",")
    arr & arr2
  end
end
str_arr = ARGV[0]
str_arr2 = ARGV[1]
res = Task3.new.common_elements(str_arr.to_s,str_arr2.to_s)
puts res