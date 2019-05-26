# frozen_string_literal: true

require_relative './validation/validate'

# Reader class
class Reader
  include Validate

  attr_accessor :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    instance?(String, name, email, city, street)
    instance?(Integer, house)
    positive?(house)
    not_empty?(name, email, city, street)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def to_s
    name
  end
end
