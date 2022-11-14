require_relative 'loan'

# we would like to add support for ebooks

class Library
  attr_reader :name, :books, :subscriptors

  def initialize(name, books, subscriptors)
    @name = name
    @books = books
    @subscriptors = subscriptors
    @loans = []
  end

  def lend(subscriptor, book)
    already_lent = @loans.any? do |loan|
      loan.book == book
    end
    if already_lent || is_forbidden(subscriptor, book)
      false
    else
      @loans.push(Loan.new(subscriptor, book))
      persist
      true
    end
  end

  def is_forbidden(subscriptor, book)
    if subscriptor.age >= 18
      false
    elsif book.title.downcase.include? 'adult'
      true
    end
  end

  def persist
    puts "[#{self.class}] I will be persisting myself to a file"
    @books.each { |s| s.persist }
    @subscriptors.each { |s| s.persist }
    @loans.each { |s| s.persist }
  end
end
