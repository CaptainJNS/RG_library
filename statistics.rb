# frozen_string_literal: true

# module for calculate statistics
module Statistic
  def top_reader(orders, quantity = 1)
    top_readers = Hash.new(0)
    orders.each { |order| top_readers[order.reader] += 1 }
    top_readers.sort_by { |_key, value| -value }[0...quantity].to_h
  end

  def top_book(orders, quantity = 1)
    top_books = Hash.new(0)
    orders.each { |order| top_books[order.book] += 1 }
    top_books.sort_by { |_key, value| -value }[0...quantity].to_h
  end

  # def number_of_readers(orders, quantity = 3)
  #   top_books = top_book(orders, quantity)
  #   readers = []
  #   top_books.each {|key, value| }#use array.uniq
  # end
end
