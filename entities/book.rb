require_relative '../validation/validate'

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
    "\"#{title}\", written by #{author}"
  end
end
