class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash  :category
  belongs_to_active_hash  :status
  belongs_to_active_hash  :shipping_fee_burden
  belongs_to_active_hash  :shipping_area
  belongs_to_active_hash  :days_to_Ship

  with_options presence: true do
    validates :name
    validates :explanation
    validates :category_id, numericality: { other_than: 0, message: 'select' }
    validates :status_id, numericality: { other_than: 0, message: 'select' }
    validates :shipping_fee_burden_id, numericality: { other_than: 0, message: 'select' }
    validates :shipping_area_id, numericality: { other_than: 0, message: 'select' }
    validates :days_to_ship_id, numericality: { other_than: 0, message: 'select' }
    validates :price, numericality: { with: /\A[0-9]+\z/, message: 'Half-width number' }
    validates_inclusion_of :price, in: 300..9999999, message: 'Out of setting range'
    validates :image
  end

  belongs_to :user
  has_one :purchase
  has_one_attached :image
end
