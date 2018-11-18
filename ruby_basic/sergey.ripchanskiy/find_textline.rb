# TASK #5. Find the text line from text file
class FindLine
  def initialize
    @params = ARGV
  end

  def find_line
    text_file_name = @params[0]
    text = @params[1]
    line_array = File.readlines(text_file_name)
    line_array.each_with_index do |val,index|
      puts "The number of line is: #{index + 1}" if val[/#{text}/]
      break if val[/#{text}/]
    end
  end
end
FindLine.new.find_line
# type ruby find_textline.rb text.txt battle
