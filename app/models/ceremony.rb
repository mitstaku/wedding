class Ceremony < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :ceremony_category

  validates :ceremony_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end