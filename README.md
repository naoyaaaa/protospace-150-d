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

## commentテーブル
### Association

例
## userテーブル
