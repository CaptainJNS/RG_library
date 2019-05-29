require_relative '../validation/validate'

class Book
  include Validate

  attr_reader :title, :author

  def initialize(title, author)
    valid(title, author)

    @title = title
    @author = author
  end

  def to_s
    "\"#{title}\", written by #{author}"
  end

  private

  def valid(title, author)
    not_empty?(title)
    instance?(String, title)
    instance?(Author, author)
  end
end
