class VeuneCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '会場使用料' },
    { id: 2, name: 'ウェイティングルーム' },
    { id: 3, name: 'メイクルーム' },
  ]

  include ActiveHash::Associations
  has_many :venue
end
