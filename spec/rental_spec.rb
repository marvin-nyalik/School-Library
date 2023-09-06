require_relative 'spec_helper'
require 'date'

describe Rental do
  before(:each) do
    @book = Book.new('Title', 'Author')
    @person = Person.new(20, 'Allan')
    @date = Date.today
    @rental = Rental.new(@date, @book, @person)
  end

  it 'is initialized correctly' do
    expect(@rental.book.title).to eq('Title')
    expect(@rental.person.name).to eq('Allan')
  end

  it 'Adds the rental to the books rentals array' do
    expect(@book.rentals).to be_truthy
  end

  it 'Adds the rental to the persons rentals array' do
    expect(@person.rentals).to be_truthy
  end
end
