class SearchStringFile
  def initialize(file_name, text)
    @file_name = file_name
    @text = text
  end

  def info
    File.open(@file_name, "r" ) do |file|
      file = file.map { |x| x.chomp}
      file.index(@text) + 1
    end
  end
end
    
search = SearchStringFile.new(*ARGV)
puts search.info