require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../extensions')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class  TestLibrary < Minitest::Test

  def test_check_book_title
    book = Library.new("Lord of the Rings", {student_name: "Jeff", date: "01/12/16"})
    assert_equal("Lord of the Rings", book.title())
  end

  def test_get_book_by_name
    book = Library.new("Lord of the Rings", {student_name: "Jeff", date: "01/12/16"})

    expected_return = book.title(), book.rental_details()

    assert_equal(expected_return, book.return_full_book_details("Lord of the Rings"))
  end

  def test_get_rental_details_by_book_name
    book = Library.new("Lord of the Rings", {student_name: "Jeff", date: "01/12/16"})

    expected_return = book.rental_details()

    assert_equal(expected_return, book.return_rental_details("Lord of the Rings"))

  end

  # def test_add_book_by_name
  #   book = Library.new("", "")
  #   Library.add_book_by_name("The hobbit", {student_name: " ", date: " "})
  #   assert_equal("The hobbit", Library.books[:title])
  # end


end
