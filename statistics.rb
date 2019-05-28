module Statistics
  def top(orders, object, quantity = 1)
    tops = Hash.new(0)
    orders.each { |order| tops[order.send(object)] += 1 }
    tops.sort_by { |_key, value| -value }[0...quantity].to_h
  end

  def number_of_readers_top_books(orders, quantity = 3)
    top_books = top(orders, :book, quantity)
    readers = []
    orders.each do |order|
      readers.push(order.reader) if top_books.include?(order.book)
    end
    readers.uniq.size
  end
end
