class Print < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :print_category
  belongs_to :event_version
end
