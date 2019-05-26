# frozen_string_literal: true

require_relative 'dependency'

# Library class
class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize(authors, books, readers, orders)
    @authors = authors
    @books = books
    @readers = readers
    @orders = orders
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
