class Flower < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :flower_category
  validates :flower_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end
