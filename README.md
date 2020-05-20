# Chat-spaceDB設計


## usersテーブル

|id||Column|Type|Options|
|------||------|----|-------|
|1||user_id|integer|null: false, foreign_key: true|
|2||group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user