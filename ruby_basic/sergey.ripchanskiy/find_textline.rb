# TASK #5. Find the text line from text file
class FindLine
  def initialize
    @params = ARGV
  end

  def find_line
    text_file_name = @params[0]
    text = @params[1]
    line_array = File.open(text_file_name).read.split("\n")
    @counter = 0
    line_array.each do |item|
      @counter += 1
      puts "The number of line is: #{@counter}" if item[/#{text}/]
      break if item[/#{text}/]
    end
  end
end
FindLine.new.find_line
# type ruby find_textline.rb text.txt battle
