class Array
  def read_from_stdin
    $stdin.each_line do |line|
      self.push(line.strip)
    end
  end
end

array1 = []
array2 = []

print 'Enter the first array members: '
array1.read_from_stdin

print 'Enter the second array members: '
array2.read_from_stdin

intersection = array1 & array2

puts "Array intersection: #{intersection.join(', ')}"
