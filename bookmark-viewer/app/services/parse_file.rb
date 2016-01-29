class ParseFile

  def self.call(file)
    @imported_bookmarks = { }
    books = Nokogiri::HTML(file)
    urls = books.css("a").map { |link| link['href']}
    titles = books.css("a").map { |link| link.text }
  end

end
