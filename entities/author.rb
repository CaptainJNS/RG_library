require_relative '../validation/validate'

class Author
  include Validate

  attr_accessor :name, :bio

  def initialize(name, bio = '')
    instance?(String, name, bio)
    not_empty?(name)

    @name = name
    @bio = bio
  end

  def to_s
    name
  end
end
