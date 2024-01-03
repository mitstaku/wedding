class Guest < ApplicationRecord
  belongs_to :event_version

  validates :adult_count, presence: true
  validates :child_count, presence: true
end