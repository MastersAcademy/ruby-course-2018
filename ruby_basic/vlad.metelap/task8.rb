class Task8

  def self.arr_sort(str_arr)
    arr = str_arr.split(",")
    arr = arr.sort!{|x,y| y <=> x }
    rez = arr.sort!{|x,y| y <=> x }
    puts rez
  end
end
str_arr = ARGV[0]
Task8.arr_sort(str_arr)

