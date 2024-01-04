class Staging < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :staging_category
  belongs_to :event_version
  validates :staging_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end
