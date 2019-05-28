require_relative 'errors'

module Validate
  include Errors

  def not_empty?(*args)
    raise EmptyStringError unless args.any?(&:empty?)
  end

  def instance?(main_class, *args)
    args.each { |object| raise WrongClassError unless object.instance_of?(main_class) }
  end

  def positive?(num)
    raise WrongNumberError unless num.positive?
  end
end
