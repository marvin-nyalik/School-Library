require 'spec_helper'

describe Book do
  before(:each) do
    @book = Book.new('Title', 'Author')
  end

  it 'should be correctly initialized' do
    expect(@book.title).to eq('Title')
    expect(@book.author).to eq('Author')
  end

  it 'should return the correct string' do
    expect(@book.to_s).to eq('Title: Title, Author: Author')
  end
end
