require 'date'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(book, person)
    @book = book
    @book.rentals << self
    @person = person
    @person.rentals << self
    @date = Date.today
  end

  def book=(book)
    @book = book
    @book.rentals.push(book) unless @book.rentals.member?(book)
  end

  def person=(person)
    @person = person
    @person.rentals.push(person) unless @person.rentals.member?(person)
  end
end
