class MyNum
  def initialize(operand1,operand2)
    @operand1 = operand1
    @operand2 = operand2
  end

  def sum
    @operand1+@operand2
  end

  def sub
    @operand1-@operand2
  end

  def div
    @operand1/@operand2
  end

  def mult
    @operand1*@operand2
  end
end

puts MyNum.new(ARGV[0].to_f,ARGV[1].to_f).send(ARGV[2].gsub(/\s+/,'_').downcase.to_sym)