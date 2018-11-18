class WorkWithArray
  def integer?(item)
    item =~ /^-?\d+$/ ? true : false
  end

  def float?(item)
    item =~ /^-?\d+\.?\d*$/ ? true : false
  end

  def even_numbers(array)
    array_num = []
    array.each do |element|
      if element.is_a?(String) && integer?(element)
        array_num.push(element.to_i)
      elsif element.is_a?(String) && float?(element)
        array_num.push(element.to_f)
      elsif element.is_a? Numeric
        array_num.push(element)
      end
    end
    array_num.select { |element| (element % 2).zero? }
  end
end

arr_test = ['1', '2.5', '3.14235888', 2, 4.0, 'aaaa']
puts WorkWithArray.new.even_numbers(arr_test)
