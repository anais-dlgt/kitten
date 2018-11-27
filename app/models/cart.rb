class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(item)
    chat = line_items.find_by(item: item)

    if chat
      chat.quantity += 1
    else
      chat = line_items.new(item: item)
    end
    chat
  end

  def total
    line_items.to_a.sum(&:total)
  end
end
