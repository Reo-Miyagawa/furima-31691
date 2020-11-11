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
| birthday           | integer    | null: false                    |


### Association

- has_many :items
- has_many :purchases




## itemsテーブル

| Column                                | Type       | Options                        |
| ------------------------------------- | ---------- | ------------------------------ |
| name                                  | string     | null: false                    |
| explanation                           | string     | null: false                    |
| category_id (Active_Hash)             | string     | null: false                    |
| status_id (Active_Hash)               | string     | null: false                    |
| shipping_fee_burden_id (Active_Hash)  | string     | null: false                    |
| shipping_area_id (Active_Hash)        | string     | null: false                    |
| days_to_ship_id (Active_Hash)         | integer    | null: false                    |
| price                                 | integer    | null: false                    |
| user                                  | references | null: false, foreign_key:true  |


### Association

- belongs_to :user
- has_many :prototype



## purchasesテーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| user                 | references | null: false, foreign_key:true  |
| item                 | references | null: false, foreign_key:true  |


### Association

- belongs_to :user
- has_many :item
- has_many :street addresses


## street addressesテーブル

| Column                          | Type       | Options                        |
| ------------------------------- | ---------- | ------------------------------ |
| post_code                       | integer    | null: false                    |
| prefectures_id (Active_Hash)    | string     | null: false                    |
| municipality                    | string     | null: false                    |
| address                         | string     | null: false                    |
| building_name                   | string     |                                |
| phone_number                    | integer    | null: false                    |
| purchase                        | references | null: false, foreign_key:true  |

### Association

- has_many :purchases