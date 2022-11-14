class Book
  attr_reader :isbn, :title, :author, :release_year, :pages

  def initialize(isbn, title, author, release_year, pages)
    @isbn = isbn
    @title = title
    @author = author
    @release_year = release_year
    @pages = pages
  end

  def persist
    puts "[#{self.class}] I will be persisting myself to a file"
  end
end
