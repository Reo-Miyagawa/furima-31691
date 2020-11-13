FactoryBot.define do
  factory :user do
    nickname                   {"テスト"}
    email                      {Faker::Internet.email}
    last_name                  {"山田"}
    first_name                 {"太郎"}
    last_name_kana             {"ヤマダ"}
    first_name_kana            {"タロウ"}
    birthday                   {"1930-01-01"}
    password                   {"111111"}
    password_confirmation      {password}
  end
end