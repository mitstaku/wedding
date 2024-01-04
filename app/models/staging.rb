class Staging < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :staging_category
  belongs_to :event_version

end
