require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  def setup
    @items = items(:one)
  end

  test 'no empty title' do
    @items.title = ""
    assert_not @items.valid?
  end

  test 'no empty description' do
    @items.description = ""
    assert_not @items.valid?
  end

  test 'no empty price' do
    @items.price = ""
    assert_not @items.valid?
  end

  test 'no empty image_url' do
    @items.image_url = ""
    assert_not @items.valid?
  end

  test 'image_url is not empty' do
    res = Net::HTTP.get_response(URI.parse(@items.image_url))
    assert res.code.to_i >= 200 && res.code.to_i < 400
  end
end
