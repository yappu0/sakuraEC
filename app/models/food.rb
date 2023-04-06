class Food < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price_without_tax, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :default_order, -> { order(id: :desc) }

  # TAX_RATE = 0.10
  #
  # def price_with_tax
  #   (price_without_tax * (1 + TAX_RATE)).floor
  # end
end
