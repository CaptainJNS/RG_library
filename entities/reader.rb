require_relative '../validation/validate'

class Reader
  include Validate

  attr_reader :name, :email, :city, :street, :house

  def initialize(name, email, city, street, house)
    valid(name, email, city, street, house)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def to_s
    name
  end

  private

  def valid(name, email, city, street, house)
    instance?(String, name, email, city, street)
    instance?(Integer, house)
    positive?(house)
    not_empty?(name, email, city, street)
  end
end
