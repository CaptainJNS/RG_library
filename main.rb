# frozen_string_literal: true

require_relative 'library'

library = Library.new

def show(library)
  orders(library)
  top_books(library)
  top_readers(library)
  number_of_readers(library)
end

def orders(library)
  puts '+' * 10 + 'library orders' + '+' * 10
  puts library.orders
end

def top_readers(library, qua = 3)
  puts '+' * 10 + 'top readers' + '+' * 10
  library.get_top_readers(qua).each do |reader, value|
    puts "#{reader} took #{value} books"
  end
end

def top_books(library, qua = 3)
  puts '+' * 10 + 'most popular books' + '+' * 10
  library.get_top_books(qua).each do |book, value|
    puts "#{book} was taken #{value} times"
  end
end

def number_of_readers(library, qua = 3)
  puts '+' * 10 + 'number of readers top books' + '+' * 10
  puts library.get_number_of_readers_top_books(qua)
end

show(library)
