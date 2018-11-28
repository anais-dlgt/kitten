class Item < ApplicationRecord
  has_many :line_items, dependent: :nullify

  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true

  def price_in_cents
    (price*100).to_i
  end
end
