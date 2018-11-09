class SearchStringFile
  def search_str_file(file_name)
    File.open(file_name, "r") do |file|
      @item_fields =  file.map { |x| x.chomp}
      @item_fields.index(yield) + 1
    end
  end
end
    
search = SearchStringFile.new
puts search.search_str_file("test.txt") { "и, жизнь ласкает тишиной, " }
