require_relative './dependency'

library = DataGenerator.generate_library

Output.top_books(library)
