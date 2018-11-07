class MyNum
  @methods = {
      "sum" => "+",
      "sub" => "-",
      "div" => "/",
      "mult" => "*"
  }
  puts eval(ARGV[0]+@methods[ARGV[2]]+ARGV[1])
  #
  # def sum
  #   puts ARGV[0]+ARGV[1]
  # end
  #
  # def sub
  #   puts ARGV[0]-ARGV[1]
  # end
  #
  # def div
  #   puts ARGV[0]/ARGV[1]
  # end
  #
  # def mult
  #   puts ARGV[0]*ARGV[1]
  # end
end

MyNum.new
# a=MyNum.new
# a.eval(ARGV[2])