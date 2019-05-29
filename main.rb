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
