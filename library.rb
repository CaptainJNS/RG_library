# frozen_string_literal: true

require_relative 'dependency'

# Library class
class Library
  include DataUtilities
  include Statistics

  attr_accessor :authors, :books, :readers, :orders

  def initialize(path = '')
    path.empty? ? load_data : load_data(path)

    @books = get_data('books')
    @orders = get_data('orders')
    @readers = get_data('readers')
    @authors = get_data('authors')
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
end
