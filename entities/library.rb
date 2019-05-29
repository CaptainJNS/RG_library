require_relative '../data/data_utilities'
require_relative '../statistics'

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

  def self.load_library_from_file(path = '')
    DataUtilities.load_data(path)
  end

  def get_top_books(quantity = 1)
    top(@orders, object: :book, attr_name: :title, quantity: quantity)
  end

  def get_top_readers(quantity = 1)
    top(@orders, object: :reader, attr_name: :name, quantity: quantity)
  end

  def get_number_of_readers_top_books(quantity = 3)
    number_of_readers_top_books(@orders, quantity: quantity)
  end

  def save(path = '')
    save_data(self, path)
  end
end
