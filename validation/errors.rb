# frozen_string_literal: true

# Erros module
module Errors
  # Check empty string
  class EmptyStringError < StandardError
    def initialize
      super('Parametr must be not empty!')
    end
  end

  # Check instance class
  class WrongClassError < StandardError
    def initialize
      super('Wrong class!')
    end
  end

  # Check negative integer
  class WrongNumberError < StandardError
    def initialize
      super('Must be a positive!')
    end
  end
end
