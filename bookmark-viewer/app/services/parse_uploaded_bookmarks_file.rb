class ParseUploadedBookmarksFile

  def self.call(file)
    books = Nokogiri::HTML(file)
    urls = books.css("a").map { |link| link['href']}
    titles = books.css("a").map { |link| link.text }
    zipped = titles.zip(urls).flatten.compact
    zipped2d = zipped.each_slice(2).to_a
    persist_uploaded_bookmarks(zipped2d)
    parse(urls)
  end

  def self.persist_uploaded_bookmarks(zipped2d)
    zipped2d.each do |subarray|
      Bookmark.create(name: subarray[0], url: subarray[1])  ### Must link with UserID
    end
  end


  def self.parse(urls)
    urls.each do |url|
      ParseURI.call(url);
    end
  end


end
