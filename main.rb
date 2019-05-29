require_relative './entities/library'

library1 = Library.new
# library.generate_library
library1.load_library_from_file

author1 = Author.new('Hideo Kojima', 'A God, a genius and just a good guy')
book1 = Book.new('How to become a genius', author1)

author2 = Author.new('Albert Einstein', 'Your school teacher')
book2 = Book.new('Ruby on Rails for dummies', author2)

authors = [author1, author2]
books = [book1, book2]

library1.add_objects(authors)
library1.add_objects(books)

library2 = Library.new(author1, author2, book1, book2)

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

show(library1)

library2.save
