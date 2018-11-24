# created class WorkWithArray for task number 3
class WorkWithArray
  def integer?(item)
    item =~ /^-?\d+$/ ? true : false
  end

  def float?(item)
    item =~ /^-?\d+\.?\d*$/ ? true : false
  end

  def even_numbers(array)
    array_num = array.map do |element|
      if element.is_a?(String) && integer?(element)
        element.to_i
      elsif element.is_a?(String) && float?(element)
        element.to_f
      elsif element.is_a? Numeric
        element
      end
    end
    array_num.compact.select { |element| (element % 2).zero? }
  end
end

arr_test = ['1', '2.5', '3.14235888', 2, 4.0, 'aaa', '2.0', '-6']
puts WorkWithArray.new.even_numbers(arr_test)
