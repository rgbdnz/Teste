# Class to represent an item sold in the store.
class Item
  # TODO Comment
  DATA_FILE = "data.txt"

  attr_accessor :id, :type, :price
  def initialize(id, type, price)
    @id, @type, @price = id, type, price
  end
  def to_s
    "Item #{@id} is a #{@type}: Price $#{@price}"
  end
  # Returns an array of all the items sold in the store.
  def self.load_item_data
    items = []
    File.open(DATA_FILE) do |data_file|
      data_file.readlines.each do |line|
        items << Item.new(*line.split("\s"))
      end
    end
    items
  end
end
