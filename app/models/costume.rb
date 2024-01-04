class Costume < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :costume_category
end
