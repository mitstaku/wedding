class Beauty < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :event_version
  belongs_to :beauty_category  

end