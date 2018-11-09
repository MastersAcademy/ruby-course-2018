def string_index
  lines = []

  File.open("#{ARGV.first}", 'r') do |file|
    while (line = file.gets)
      lines.push line
    end
  end
  lines.select.with_index { |l, i| puts i + 1  if l.include? ARGV.last}
end

string_index