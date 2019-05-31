module Statistics
  def top(orders, object:, attr_name:, quantity: 1)
    orders.map(&object)
          .group_by(&attr_name)
          .sort_by { |_grouped, entitites| -entitites.size }
          .first(quantity)
          .map(&:first)
  end

  def number_of_readers_top_books(orders, quantity: 3)
    top_books = top(orders, object: :book, attr_name: :title, quantity: quantity)

    orders.select { |order| top_books.include?(order.book.title) }.uniq(&:reader).size
  end
end
