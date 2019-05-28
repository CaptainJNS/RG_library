module Errors
  class EmptyStringError < StandardError
    def initialize
      super('Parametr must be not empty!')
    end
  end

  class WrongClassError < StandardError
    def initialize
      super('Wrong class!')
    end
  end

  class WrongNumberError < StandardError
    def initialize
      super('Must be a positive!')
    end
  end
end
