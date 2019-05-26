# frozen_string_literal: true

require_relative '../validation/validate'
require 'date'

# Order class
class Order
  include Validate

  attr_accessor :book, :reader, :date

  def initialize(book, reader, date = Date.today)
    instance?(Book, book)
    instance?(Reader, reader)
    instance?(Date, date)

    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "#{book}, was taken by #{reader}, #{date}"
  end
end
