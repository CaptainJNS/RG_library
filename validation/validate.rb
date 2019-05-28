require_relative 'errors'

module Validate
  include Errors

  def not_empty?(*args)
    args.each { |x| raise EmptyStringError if x.empty? }
  end

  def instance?(main_class, *args)
    args.each { |x| raise WrongClassError unless x.instance_of?(main_class) }
  end

  def positive?(num)
    raise WrongNumberError unless num.positive?
  end
end
