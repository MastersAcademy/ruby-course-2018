file_path, searched_line = ARGV

File.open file_path do |file|
  index = file.find_index(searched_line + "\n")
  if index.nil?
    puts 'Not found line'
  else
    puts index
  end
end