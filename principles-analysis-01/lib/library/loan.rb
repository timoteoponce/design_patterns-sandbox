class Loan
  attr_reader :subscriptor, :book

  def initialize(subscriptor, book)
    @subscriptor = subscriptor
    @book = book
    @created_at = Time.new
  end

  def persist
    puts "[#{self.class}] I will be persisting myself to a file"
  end
end
