class Print < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :print_category
  belongs_to :event_version
  validates :print_category_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end
