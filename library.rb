class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize(authors, books, readers, orders)
    @authors = authors
    @books = books
    @readers = readers
    @orders = orders
  end

end
