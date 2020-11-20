class Street < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash  :prefectures

  with_options presence: true do
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: 'code Input correctly' }
    validates :prefectures_id, numericality: { other_than: 0, message: 'select' }
    validates :municipality
    validates :address
    validates :phone_number, numericality: { with: /\A\d{11}\z/, message: 'number Input only number' }
  end

  belongs_to :order
end
