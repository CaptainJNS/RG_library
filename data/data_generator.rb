require 'ffaker'
require 'date'
require_relative '../dependency'

module DataGenerator
  def generate_authors(quantity = 10)
    quantity.times.map { Author.new(FFaker::Name.name, 'Biography') }
  end

  def generate_books(authors, quantity = 25)
    quantity.times.map { |author| Book.new(FFaker::Book.title, authors[author % @authors.size]) }
  end

  def generate_readers(quantity = 35)
    quantity.times.map do
      name = FFaker::Name.name
      email = FFaker::Internet.email
      city = FFaker::Address.city
      street = FFaker::Address.street_name
      house = rand(1..42)
      Reader.new(name, email, city, street, house)
    end
  end

  def generate_orders(books, readers, quantity = 50)
    quantity.times.map do
      book = books.sample
      reader = readers.sample
      Order.new(book, reader)
    end
  end
end
