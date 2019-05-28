require 'yaml'

module DataUtilities
  SEED = './data/seed.yaml'
  SAVE = './data/save.yaml'

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

  def save_data(data, path = SAVE)
    File.write(path, data.to_yaml)
  end
end
