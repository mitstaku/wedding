class FoodCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '料理（大人）' },
    { id: 3, name: '料理（子供）' },
    { id: 4, name: '飲料' },
    { id: 5, name: 'ウェディングケーキ' }
  ]
  include ActiveHash::Associations
  has_many :foods
end
