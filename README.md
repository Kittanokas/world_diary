# アプリケーション名：　World Diary
# アプリケーション概要
  ーユーザー登録
  ー画像・テキストの投稿、編集、削除
  ー投稿に対するコメント
  ーGoogleMapによる位置確認

# URL
# テスト用アカウント

# 利用方法
  ユーザー登録をし、各人が経験した海外旅行のおすすめの国、地域や場所について、写真と文章で投稿する。その投稿に対して、コメントやいいね！をすることができる。お気に入りボタンを押すことで、今後行ってみたい場所をマイページにストックできる。

# 目指した課題解決
  全ての年代、海外旅行を趣味としている人々に対して。
  昨今、海外旅行に気軽に行けないため、インターネット上で少しでも海外旅行体験ができるようなアプリを作成した。各人の海外旅行体験の共有と、その投稿から今後、自ら行ってみたい海外旅行先をストックできる。

# 洗い出した要件
  ユーザー管理機能
  投稿一覧表示機能
  投稿機能
  詳細表示機能
  投稿編集機能
  投稿削除機能
  
# 実装した機能についての画像やGIFおよびその説明
# 実装予定の機能

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