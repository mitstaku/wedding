class CeremonyCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '挙式料' },
    { id: 3, name: 'チャペル演出' },
    { id: 4, name: 'フラワーシャワー' }
  ]
  include ActiveHash::Associations
  has_many :ceremonies
end
