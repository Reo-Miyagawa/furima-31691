class Item < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :explanation
    validates :category_id
    validates :status_id
    validates :shipping_fee_burden_id
    validates :shipping_area_id
    validates :days_to_ship_id
    validates :price

    belongs_to :user
    has_one :purchase
    has_one_attached :image
end
