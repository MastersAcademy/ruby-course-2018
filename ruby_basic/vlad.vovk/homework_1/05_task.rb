def string_index
  get_index = 1

  File.open("#{ARGV.first}", 'r') do |file|
    file.each.with_index do |line, index|
      if line.include? ARGV.last
        get_index += index
        break 
      end
    end
  end
  get_index
end

p string_index
