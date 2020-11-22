FactoryBot.define do
  factory :order_form do

    post_code                        { "123-1234" }
    prefectures_id                   { 1 }
    municipality                     { "横浜市" }
    address                          { "青山1-1" }
    building_name                    { "柳ビル" }
    phone_number                     { "09012345678" }
    token                            {"tok_abcdefghijk00000000000000000"}
    # association :user
    # association :item

  end
end
