# frozen_string_literal: true

require_relative 'errors'

# Validation error module
module Validate
  include Errors

  def empty(*args)
    args.each { |x| raise EmptyStringError if x.empty? }
  end

  def instance(main_class, argument)
    raise WrongClassError unless argument.instance_of?(main_class)
  end

  def positive(num)
    raise WrongNumberError if num.negative?
  end
end
