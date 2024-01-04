class Photo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :photo_category
  validates :photo_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end
