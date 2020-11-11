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
- has_many :purchases




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
| post_code                       | string     | null: false                    |
| prefectures_id (Active_Hash)    | string     | null: false                    |
| municipality                    | string     | null: false                    |
| address                         | string     | null: false                    |
| building_name                   | string     |                                |
| phone_number                    | string     | null: false                    |
| purchase                        | references | null: false, foreign_key:true  |

### Association

- has_many :purchases