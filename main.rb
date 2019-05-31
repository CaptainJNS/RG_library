require_relative './dependency'

library1 = Library.load_library_from_file

library2 = DataGenerator.generate_library

author1 = Author.new('Hideo Kojima', 'A God, a genius and just a good guy')
book1 = Book.new('How to become a genius', author1)

author2 = Author.new('Albert Einstein', 'Your school teacher')
book2 = Book.new('Ruby on Rails for dummies', author2)

authors = [author1, author2]
books = [book1, book2]

library1.authors << authors
library1.books << books

library3 = Library.new(authors: authors, books: books)

Output.show(library1)

Output.top_books(library2)

library3.save

def check_number_of_readers_method(library)
  authors = library.authors
  book1 = Book.new('Book 1', authors[0])
  book2 = Book.new('Book 2', authors[0])
  book3 = Book.new('Book 3', authors[0])
  book4 = Book.new('Book 4', authors[0])
  book5 = Book.new('Book 5', authors[0])
  book6 = Book.new('Book 6', authors[0])

  readers = library.readers
  orders = [ord1 = Order.new(book2, readers[0]),
            ord2 = Order.new(book2, readers[1]),
            ord3 = Order.new(book2, readers[2]),
            ord4 = Order.new(book2, readers[3]),
            ord5 = Order.new(book1, readers[0]),
            ord6 = Order.new(book1, readers[1]),
            ord7 = Order.new(book4, readers[4]),
            ord8 = Order.new(book4, readers[5]),
            ord9 = Order.new(book4, readers[6]),
            ord10 = Order.new(book3, readers[7]),
            ord11 = Order.new(book3, readers[8])
          ] # there is 7 uniq readers of top-3 books (Book 2, Book 4, Book 1)
          
  library = Library.new(orders: orders)

  Output.show(library)
end

check_number_of_readers_method(library1)