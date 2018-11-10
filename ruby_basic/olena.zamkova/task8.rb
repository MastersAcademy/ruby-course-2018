class Array
	def getFromStdin
		$stdin.each_line do |line|
			self.push(line.strip)
		end
	end
	
	def sortDescendant
		self.sort {|x, y| y <=> x }
	end
end

array = Array.new

print "Enter array members: "

array.getFromStdin

puts "Sorted array: #{array.sortDescendant.join(', ')}"