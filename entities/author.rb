require_relative '../validation/validate'

class Author
  include Validate

  attr_reader :name, :bio

  def initialize(name, bio = '')
    valid(name, bio)

    @name = name
    @bio = bio
  end

  def to_s
    name
  end

  private

  def valid(name, bio)
    instance?(String, name, bio)
    not_empty?(name)
  end
end
