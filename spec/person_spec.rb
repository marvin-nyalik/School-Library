require_relative 'spec_helper'
​
describe Person do
  before(:each) do
    @person1 = Person.new(12)
    @person2 = Person.new(20, 'Allan')
    @person3 = Person.new(11, 'Alvin')
    @book = Book.new('Title', 'Author')
    @date = Date.today
    @rental = Rental.new(@date, @book, @person1)
  end
​
  it 'correctly uses default parameters' do
    expect(@person1.name).to eq('Unknown')
    expect(@person1.parent_permission).to be_truthy
  end
​
  it 'is initialized correctly' do
    expect(@person2.name).to eq('Allan')
  end
​
  it 'returns the correct name' do
    expect(@person3.correct_name).to eq('Alvin')
  end
​
  it 'correctly specifies whether one can use services' do
    expect(@person2.can_use_services?).to be_truthy
  end
​
  it 'correctly returns whether a person is of age' do
    expect(@person1.mature?).to be_falsey
    expect(@person2.mature?).to be_truthy
  end
​
  it 'adds a rental to the persons rentals array' do
    @person1.rental(@rental)
    expect(@person1.rentals).to be_truthy
  end
end