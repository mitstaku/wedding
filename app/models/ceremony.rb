class Ceremony < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :ceremony_category
end
