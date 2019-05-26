# frozen_string_literal: true

require_relative '../validation/validate'

# Book class
class Book
  include Validate

  attr_accessor :title, :author

  def initialize(title, author)
    not_empty?(title)
    instance?(String, title)
    instance?(Author, author)

    @title = title
    @author = author
  end

  def to_s
    "#{title}, by #{author}"
  end
end
