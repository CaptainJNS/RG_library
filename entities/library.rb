require_relative '../dependency'

class Library
  include DataUtilities
  include Statistics

  attr_accessor :authors, :books, :readers, :orders

  def initialize(authors: [], books: [], readers: [], orders: [])
    @authors = authors
    @books = books
    @readers = readers
    @orders = orders
  end

  def load_library_from_file(path = '')
    path.empty? ? load_data : load_data(path)
  end

  def get_top_books(quantity = 1)
    top(@orders, :book, :title, quantity)
  end

  def get_top_readers(quantity = 1)
    top(@orders, :reader, :name, quantity)
  end

  def get_number_of_readers_top_books(quantity = 3)
    number_of_readers_top_books(@orders, quantity)
  end

  def save(path = '')
    path.empty? ? save_data(self) : save_data(self, path)
  end
end
