class Venue < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :venue_category
  validates :venue_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end