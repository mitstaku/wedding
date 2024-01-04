class Gift < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :gift_category
end
