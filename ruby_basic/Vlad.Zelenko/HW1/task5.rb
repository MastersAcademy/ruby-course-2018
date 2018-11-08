class SearchStringFile
  def searchStrFile(fileName)
    File.open(fileName, "r") do |file|
      @item_fields =  file.map { |x| x.chomp}
      @item_fields.index(yield) + 1
    end
  end
end
    
search = SearchStringFile.new
puts search.searchStrFile("test.txt") { "и, жизнь ласкает тишиной, " }