$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'item'

class ItemTest < Test::Unit::TestCase
  PRICE = 24.95
  TYPE = "book"
  ID = "BF1"
  def test_string
    assert_equal("Item BF1 is a book: Price $24.95",
      Item.new(ID, TYPE, PRICE).to_s, "Wrong String")
  end
end