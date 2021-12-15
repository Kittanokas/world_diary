# テーブル設計

## users テーブル

| Column                | Type     | Options                    |
| ----------------------|----------|----------------------------|
| nickname              | string   | null: false                |
| email                 | string   | null: false, unique: true  |
| encrypted_password    | string   | null: false                |
| profile               | text     |                            |

### Association

- has_many :diaries
- has_many :comments

## diary テーブル

| Column          | Type           | Options                         |
|-----------------|----------------|---------------------------------|
| title           | string         | null: false                     |
| content         | text           | null: false                     |
| country_id      | integer        | null: false                     |
| city            | string         | null: false                     |
| user            | references     | null: false, foreign_key: true  |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| content  | text       | null: false                    |
| diary    | references | null: false, foreign_key: true |
| user     | references | null: false, foreign_key: true |

## Association

- belongs_to :user
- belongs_to :diary