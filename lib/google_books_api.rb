module GoogleBooksApi
  def jason_from_url(url)
    JSON.parse(Net::HTTP.get(URI.parse(Addressable::URI.encode(url))))
  end

  def url_from_keyword
    "https://www.googleapis.com/books/v1/volumes?q=#{keyword}&country=JP&maxResults=10"
  end
end