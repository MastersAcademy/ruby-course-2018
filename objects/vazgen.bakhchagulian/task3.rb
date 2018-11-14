module EvenNumbers

  def even_numbers
    even_numbers = []
    self.each do |f|
      if f%2==0
        even_numbers << f
      end
    end
    even_numbers
  end
end

class Array
  include EvenNumbers
end

puts [0,1,2,3,4,5,6,7,8,9].even_numbers.join(' ')