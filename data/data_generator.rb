require 'ffaker'
require 'date'
require_relative '../dependency'
require_relative '../entities/library'

module DataGenerator
  def self.generate_authors(quantity = 10)
    quantity.times.map { Author.new(FFaker::Name.name, 'Biography') }
  end

  def self.generate_books(authors, quantity = 25)
    quantity.times.map { |author| Book.new(FFaker::Book.title, authors[author % authors.size]) }
  end

  def self.generate_readers(quantity = 35)
    quantity.times.map do
      name = FFaker::Name.name
      email = FFaker::Internet.email
      city = FFaker::Address.city
      street = FFaker::Address.street_name
      house = rand(1..42)
      Reader.new(name, email, city, street, house)
    end
  end

  def self.generate_orders(books, readers, quantity = 50)
    quantity.times.map do
      book = books.sample
      reader = readers.sample
      Order.new(book, reader)
    end
  end

  def self.generate_library
    authors = generate_authors
    books = generate_books(authors)
    readers = generate_readers
    orders = generate_orders(books, readers)

    Library.new(authors: authors,
                books: books,
                readers: readers,
                orders: orders)
  end
end
