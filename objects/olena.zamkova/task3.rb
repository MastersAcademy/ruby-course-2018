class ArrayFilter
  def validate(object)
    raise('Wrong data type!') unless object.is_a? Array
  end

  def select_even_numbers(array)
    validate(array)

    array.map! { |item| item.to_i != 0 && item == item.to_i.to_s ? item.to_i : item }

    array.select { |item| item.is_a?(Integer) && item.even? }
  end
end

begin
  input = ARGV

  puts "Even numbers: #{ArrayFilter.new.select_even_numbers(input)}"
rescue StandardError => e
  p e.to_s
end
