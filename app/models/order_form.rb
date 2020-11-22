class OrderForm #< ApplicationRecord
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_code, :prefectures_id, :municipality, :address, :building_name, :phone_number, :token


  with_options presence: true do
    validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: 'code Input correctly' }
    validates :prefectures_id, numericality: { other_than: 0, message: 'select' }
    validates :municipality
    validates :address
    validates :phone_number, numericality: { with: /\A\d{11}\z/, message: 'number Input only number' }
    validates :token, presence: true
    validates :user_id
    validates :item_id
  end



  def save
  Order.create(user_id: user_id, item_id: item_id)
  Street.create(order_id: order.id, post_code: post_code, prefectures_id: prefectures_id, municipality: municipality, address: address, building_name: building_name, phone_number: phone_number)
  end
end




