class OrderForm #< ApplicationRecord
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_code, :prefectures_id, :municipality, :address, :building_name, :phone_number



  with_options presence: true do
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: 'code Input correctly' }
    validates :prefectures_id, numericality: { other_than: 0, message: 'select' }
    validates :municipality
    validates :address
    validates :phone_number, numericality: { with: /\A\d{11}\z/, message: 'number Input only number' }
  end



  def save
  Order.create(user_id: user.id, item_id: item.id)
  Street.create(post_code: post_code, prefectures_id: prefectures_id, municipality: municipality, address: address, building_name: building_name, phone_number: phone_number)
  end
end




