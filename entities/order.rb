require_relative '../validation/validate'

class Order
  include Validate

  attr_reader :book, :reader, :date

  def initialize(book, reader, date = Date.today)
    valid(book, reader, date)

    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "#{book}, was taken by #{reader}, #{date}"
  end

  private

  def valid(book, reader, date)
    instance?(Book, book)
    instance?(Reader, reader)
    instance?(Date, date)
  end
end
