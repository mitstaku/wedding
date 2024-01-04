class Costume < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :costume_category

  validates :costume_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end