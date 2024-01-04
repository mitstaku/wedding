class Beauty < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :beauty_category
  validates :beauty_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end