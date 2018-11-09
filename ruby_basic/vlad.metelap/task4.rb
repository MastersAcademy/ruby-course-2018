class Task4

  def convert(str)
    int_bool_arg = str ? 1: 0

    puts "Integer #{int_bool_arg} size #{int_bool_arg.size} bytes"

    str_bool_arg = int_bool_arg.to_s
    puts "String #{str_bool_arg} size #{str_bool_arg.bytesize()} bytes"

  end

end

bool_arg = ARGV[0].downcase =='true'? true : false
res = Task4.new.convert(bool_arg)
puts res