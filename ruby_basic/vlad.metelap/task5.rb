class Task5

  def self.file_include(filename,str)
    f = File.open(filename, "r")
    index = 0
    f.each_line do |line|
      if line.include? str
        puts "line index: #{index}"
        break
      end
      index += 1
    end
    f.close
  end
end

filename = ARGV[0]
str      = ARGV[1]
Task5.file_include(filename, str)