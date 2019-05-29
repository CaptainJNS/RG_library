class Output
  include DataGenerator

  class << self
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
  end
end
