class PreCeremony < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event_version
  belongs_to :pre_ceremony_category
  validates :pre_ceremony_id, presence: true
  validates :detail, presence: true
  validates :cost, presence: true
end