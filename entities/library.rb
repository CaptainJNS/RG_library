require_relative '../dependency'
require_relative '../data/data_generator'

class Library
  include DataGenerator
  include DataUtilities
  include Statistics

  attr_reader :authors, :books, :readers, :orders

  def initialize(*objects)
    @authors = []
    @books = []
    @readers = []
    @orders = []
    add_objects(objects)
  end

  def add_objects(objects)
    objects.each do |object|
      case object
      when Author
        @authors << object
      when Book
        @books << object
      when Reader
        @readers << object
      when Order
        @orders << object
      end
    end
  end

  def generate_library
    @authors = generate_authors
    @books = generate_books(@authors)
    @readers = generate_readers
    @orders = generate_orders(@books, @readers)
  end

  def load_library_from_file(path = '')
    data = path.empty? ? load_data : load_data(path)
    @books = get_data(data, 'books')
    @orders = get_data(data, 'orders')
    @readers = get_data(data, 'readers')
    @authors = get_data(data, 'authors')
  end

  def get_top_books(quantity = 1)
    top(@orders, :book, quantity)
  end

  def get_top_readers(quantity = 1)
    top(@orders, :reader, quantity)
  end

  def get_number_of_readers_top_books(quantity = 3)
    number_of_readers_top_books(@orders, quantity)
  end

  def save(path = '')
    data = {
      books: @books,
      orders: @orders,
      readers: @readers,
      authors: @authors
    }
    path.empty? ? save_data(data) : save_data(data, path)
  end
end
