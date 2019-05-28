require 'ffaker'
require 'date'
require_relative '../dependency'

module DataGenerator
  def generate_authors(quantity = 10)
    authors = []

    quantity.times { authors << Author.new(FFaker::Name.name, 'Biography') }

    authors
  end

  def generate_books(authors, quantity = 25)
    books = []
    quantity.times { |author| books << Book.new(FFaker::Book.title, authors[author % @authors.size]) }
    books
  end

  def generate_readers(quantity = 35)
    readers = []

    quantity.times do
      name = FFaker::Name.name
      email = FFaker::Internet.email
      city = FFaker::Address.city
      street = FFaker::Address.street_name
      house = rand(1..42)
      readers << Reader.new(name, email, city, street, house)
    end

    readers
  end

  def generate_orders(books, readers, quantity = 50)
    orders = []

    quantity.times do
      book = books.sample
      reader = readers.sample
      orders << Order.new(book, reader)
    end

    orders
  end
end
