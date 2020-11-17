FactoryBot.define do
  factory :item do
    name                        { 'テスト' }
    explanation                 { '説明文' }
    category_id                 { 1 }
    status_id                   { 1 }
    shipping_fee_burden_id      { 1 }
    shipping_area_id            { 1 }
    days_to_ship_id             { 1 }
    price                       { 300 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
