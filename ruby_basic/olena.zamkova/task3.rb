class Array
	def getFromStdin
		$stdin.each_line do |line|
			self.push(line.strip)
		end
	end
end

array1 = Array.new
array2 = Array.new

print "Enter the first array members: "
array1.getFromStdin

print "Enter the second array members: "
array2.getFromStdin

intersection = array1 & array2

puts "Array intersection: #{intersection.join(', ')}"