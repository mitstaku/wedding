class Video < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :video_category
  validates :video_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end