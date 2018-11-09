class Task8
  def arr_sort(str_arr)
    arr = str_arr.split(",")
    arr = arr.sort!{|x,y| y <=> x }
    rez = arr.sort!{|x,y| y <=> x }
    puts rez
  end

end

str_arr = ARGV[0]
res = Task8.new.arr_sort(str_arr)

