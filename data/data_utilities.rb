# frozen_string_literal: true

require 'yaml'

# module for working with yaml files
module DataUtilities
  SEED = './data/seed.yaml'

  def load_data(path = SEED)
    @data = Psych.safe_load(
      File.read(path),
      [Symbol, Author, Book, Order, Reader, Date],
      [],
      true
    )
  end

  def get_data(key)
    @data[key.to_sym]
  end

  def save_data(path)
    File.write(path, @data.to_yaml)
  end
end
