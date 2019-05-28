module Statistics
  # def top(orders, object, quantity = 1)
  #   tops = Hash.new(0)
  #   orders.each { |order| tops[order.send(object)] += 1 }
  #   tops.sort_by { |_object, number| -number }[0...quantity].to_h
  # end
  #
  # Why this code doesn't working as it should???
  # def top(orders, object, quantity = 1)
  #   tops = Hash.new(0)
  #   orders.group_by(&object).each { |order| tops[order[0]] += 1}
  #   tops.sort_by { |_object, number| -number }[0...quantity].to_h
  # end

  def top(orders, object, quantity = 1)
    tops = Hash.new(0)

    case object
    when :book
      orders.each { |order| tops[order.book] += 1 }
    when :reader
      orders.each { |order| tops[order.reader] += 1 }
    end

    tops.sort_by { |_object, number| -number }[0...quantity].to_h
  end

  def number_of_readers_top_books(orders, quantity = 3)
    top_books = top(orders, :book, quantity)

    orders.select { |order| top_books.include?(order.book) }.uniq.size
  end
end
