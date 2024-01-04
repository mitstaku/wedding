class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :food_category
  validates :food_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end
