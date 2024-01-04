class Venue < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :venue_category
end
