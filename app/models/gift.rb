class Gift < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :gift_category
  validates :gift_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end
