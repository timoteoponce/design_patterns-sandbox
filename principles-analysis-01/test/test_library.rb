require 'minitest/autorun'
require_relative '../lib/library/book'
require_relative '../lib/library/subscriptor'
require_relative '../lib/library/library'

class TestLibrary < Minitest::Test
  BOOKS = [Book.new('1-56619-909-3', 'Agile software development', 'Robert Martin', '1998', 250),
           Book.new('1-4028-9462-7', 'Algorithms + Data Structures = Programs', 'Niklaus Wirth', '1976', 300),
           Book.new('978-1-4028-9462-6', 'Code complete', 'Steve McConnel', '1996', 320)]

  SUBSCRIPTORS = [Subscriptor.new('Margaret Hamilton', 'margaret@hamiltom.org', 67),
                  Subscriptor.new('Grace Hopper', 'gracehope@nsv.org', 77)]

  def test_book_loan
    lib = Library.new('Town library', TestLibrary::BOOKS, SUBSCRIPTORS)
    lender = TestLibrary::SUBSCRIPTORS[0]
    book = TestLibrary::BOOKS[0]

    assert lib.lend(lender, book)
  end

  def test_book_already_lent
    lib = Library.new('Town library', TestLibrary::BOOKS, SUBSCRIPTORS)
    lender_a = TestLibrary::SUBSCRIPTORS[0]
    lender_b = TestLibrary::SUBSCRIPTORS[1]
    book = TestLibrary::BOOKS[0]

    assert lib.lend(lender_a, book)
    assert lib.lend(lender_b, book) == false
  end
end
