class PreCeremony < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :pre_ceremony_category
end
