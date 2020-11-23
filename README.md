## usersテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| last_name          | string     | null: false                    |
| first_name         | string     | null: false                    |
| last_name_kana     | string     | null: false                    |
| first_name_kana    | string     | null: false                    |
| birthday           | date       | null: false                    |


### Association

- has_many :items
- has_many :orders
<!-- - has_many :purchases -->




## itemsテーブル

| Column                                | Type       | Options                        |
| ------------------------------------- | ---------- | ------------------------------ |
| name                                  | string     | null: false                    |
| explanation                           | text       | null: false                    |
| category_id                           | integer    | null: false                    |
| status_id                             | integer    | null: false                    |
| shipping_fee_burden_id                | integer    | null: false                    |
| shipping_area_id                      | integer    | null: false                    |
| days_to_ship_id                       | integer    | null: false                    |
| price                                 | integer    | null: false                    |
| user                                  | references | null: false, foreign_key:true  |


### Association

- belongs_to :user
- has_one :order
<!-- - has_one :purchase -->



## ordersテーブル
<!-- ※変更 -->

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| user                 | references | null: false, foreign_key:true  |
| item                 | references | null: false, foreign_key:true  |


### Association

- belongs_to :user
- belongs_to :item
- has_one :street
<!-- - has_one :street address -->


## streetsテーブル

| Column                          | Type       | Options                        |
| ------------------------------- | ---------- | ------------------------------ |
| post_code                       | string     | null: false                    |
| prefectures_id                  | integer    | null: false                    |
| municipality                    | string     | null: false                    |
| address                         | string     | null: false                    |
| building_name                   | string     |                                |
| phone_number                    | string     | null: false                    |
| order                           | references | null: false, foreign_key:true  |
<!-- purchase -->

### Association

- belongs_to :order
<!-- - belongs_to :purchase -->