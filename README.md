## usersテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| nickname        | string     | null: false                    |
| email           | string     | null: false, unique: true      |
| password        | string     | null: false                    |
| last_name       | string     | null: false                    |
| first_name      | string     | null: false                    |
| last_name_kana  | string     | null: false                    |
| first_name_kana | string     | null: false                    |


### Association

- has_many :items
- has_many :purchases




## itemsテーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| image                | text       | null: false                    |
| name                 | string     | null: false                    |
| explanation          | text       | null: false                    |
| user                 | references | null: false, foreign_key:true  |


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
- has_many :items
- has_many :street_addresses


## street_addressesテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| post_code      | text       | null: false                    |
| municipality   | text       | null: false                    |
| address        | text       | null: false                    |
| building_name  | references | null: false                    |
| phone_number   | text       | null: false                    |
| purchase       | references | null: false, foreign_key:true  |


### Association

- has_many :purchases