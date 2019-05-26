# frozen_string_literal: true

require_relative 'library'

library = Library.new

puts '-' * 10 + 'library orders' + '-' * 10
puts library.orders

puts '-' * 10 + 'top readers' + '-' * 10
library.get_top_readers(3).each do |reader, value|
  puts "#{reader} took #{value} books"
end

puts '-' * 10 + 'most popular books' + '-' * 10
library.get_top_books(3).each do |book, value|
  puts "#{book} was taken #{value} times"
end

puts '-' * 10 + 'number of readers top books' + '-' * 10
puts library.get_number_of_readers_top_books

# library.save
