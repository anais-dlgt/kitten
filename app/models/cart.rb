class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_item(item)
    photo = line_items.find_by(item: item)
    if photo
      photo.quantity += 1
    else
      photo = line_items.new(item: item)
    end
    photo
  end

  def total
    line_items.to_a.sum(&:total)
  end

end
