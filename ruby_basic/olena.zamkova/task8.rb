class Array
  def read_from_stdin
    $stdin.each_line do |line|
      self.push(line.strip)
    end
  end

  def sort_descendant
    self.sort { |x, y| y <=> x }
  end
end

array = []

print 'Enter array members: '

array.read_from_stdin

puts "Sorted array: #{array.sort_descendant.join(', ')}"
