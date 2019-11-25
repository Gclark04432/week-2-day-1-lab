class Library

  attr_reader :title, :rental_details, :books

  def initialize(title, rental_details)
    @title = title
    @rental_details = rental_details
    @books = [{title: title, rental_details: rental_details}]
  end

  def return_full_book_details(book_name)
    return @title, @rental_details
  end

  def return_rental_details(book_name)
    return @rental_details
  end

  def add_book_by_name(title, rental_details)
    @books << {title: title, rental_details: rental_details}
  end

end
