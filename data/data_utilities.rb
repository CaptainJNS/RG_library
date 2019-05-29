# frozen_string_literal: true

module DataUtilities
  SEED = './data/seed.yaml'
  STORE = './data/save.yaml'

  def self.load_data(path)
    Psych.safe_load(
      File.read(path.empty? ? SEED : path),
      [Symbol, Library, Author, Book, Order, Reader, Date],
      [],
      true
    )
  end

  def save_data(data, path)
    path.empty? ? File.write(STORE, data.to_yaml) : File.write(path, data.to_yaml)
  end
end
