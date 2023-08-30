require 'date'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @book = book
    @book.rentals << self
    @person = person
    @person.rentals << self
    @date = date
  end
end
