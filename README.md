# README

# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| name               | string | null: false              |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |

### Association

- has_many :items
- has_many :events

## events テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user_id           | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :event_versions

## event_versions テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_id          | references | null: false, foreign_key: true |
| version_number    | integer    | null: false                    |
| details           | text       | null: false                    |
| cost              | decimal    | null: false                    |
| input_date        | date       | null: false                    |

### Association

- belongs_to :event
- has_many :guests
- has_many :weddings
- has_many :foods
- has_many :venues
- has_many :costumes
- has_many :beauties
- has_many :flowers
- has_many :prints
- has_many :stagings
- has_many :photos
- has_many :videos
- has_many :gifts
- has_many :pre_weddings

## guests テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| event_version_id   | string | null: false, foreign_key: true|
| count              | string | null: false |

### Association

- belongs_to :event_version

## weddings テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| wedding_id        | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## foods テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| food_id           | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## venues テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| venue_id          | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## costumes テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| costume_id        | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## beauties テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| beauty_id         | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## flowers テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| flower_id         | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## prints テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| print_id          | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## stagings テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| staging_id        | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## photos テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| photo_id          | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## videos テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| video_id          | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## gifts テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| gift_id           | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version

## pre_weddings テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| event_version_id  | references | null: false, foreign_key: true |
| pre_wedding_id    | integer    | null: false                    |
| detail            | text       | null: false                    |
| cost              | decimal    | null: false                    |

### Association

- belongs_to :event_version