class Flower < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :flower_category

end
