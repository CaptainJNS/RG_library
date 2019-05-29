require_relative './entities/library'
require_relative './data/data_generator'

library1 = Library.new.load_library_from_file
# library1 = DataGenerator.generate_library

author1 = Author.new('Hideo Kojima', 'A God, a genius and just a good guy')
book1 = Book.new('How to become a genius', author1)

author2 = Author.new('Albert Einstein', 'Your school teacher')
book2 = Book.new('Ruby on Rails for dummies', author2)

authors = [author1, author2]
books = [book1, book2]

library1.add_objects(authors)
library1.add_objects(books)

# library2 = Library.new(authors: authors, books: books)

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

def top_readers(library, quantity = 3)
  puts '+' * 10 + 'top readers' + '+' * 10
  library.get_top_readers(quantity).each { |reader| puts reader }
end

def top_books(library, quantity = 3)
  puts '+' * 10 + 'most popular books' + '+' * 10
  library.get_top_books(quantity).each { |book| puts book }
end

def number_of_readers(library, quantity = 3)
  puts '+' * 10 + 'number of readers top books' + '+' * 10
  puts library.get_number_of_readers_top_books(quantity)
end

show(library1)

library1.save
