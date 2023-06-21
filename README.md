# README


## userテーブル
### Association
has_many:comments
has_many:prototypes

| Column           | Type   | Options                        |
| email            | string | null: false,unique: true       |
| encrypt_password | string | null: false                    |
| name             | string | null: false                    |
| profile          | text   | null: false                    |
| occupation       | text   | null: false                    |
| posision         | text   | null: false                    |

## prototypeテーブル
### Association

## commentsテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| prototype | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association
- belongs_to :prototype
- belongs_to :user

例
## userテーブル
