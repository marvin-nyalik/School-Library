class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def rental(rental)
    @rentals.push(rental)
  end
end
