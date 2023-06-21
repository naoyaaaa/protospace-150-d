# README


## userテーブル
### Association

## prototypeテーブル
### Association

## commentテーブル
### Association

例
## userテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |
