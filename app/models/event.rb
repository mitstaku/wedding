class Event < ApplicationRecord

  belongs_to :user

  validates :name, presence: true
  validates :event_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "はyyyy-mm-ddの形式で入力してください" }
end
