# Chat-spaceDB設計


## usersテーブル

|Column||Column|Type|Options|
|------||------|----|-------|
|user_id||user_id|integer|null: false, foreign_key: true|
|group_id||group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
