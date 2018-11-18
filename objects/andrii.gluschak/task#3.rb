class Numbers
  def initialize
    puts 'Enter mass elements'
    @arr = gets.gsub('\n','').split(',')
  end
  def even_number
    @arr.select {|e| e.to_f % 2 == 0 }
  end
end
number = Numbers.new
puts number.even_number
