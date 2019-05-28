module Errors
  class EmptyStringError < StandardError
    def initialize
      super('Parameter must be not empty!')
    end
  end

  class WrongClassError < StandardError
    def initialize
      super('Wrong class!')
    end
  end

  class WrongNumberError < StandardError
    def initialize
      super('Number must be a positive!')
    end
  end
end
