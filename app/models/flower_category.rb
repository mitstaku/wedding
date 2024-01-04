class FlowerCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'メインテーブル装花' },
    { id: 3, name: 'ゲストテーブル装花' },
    { id: 4, name: 'ブーケ・ブートニア' }
  ]
  include ActiveHash::Associations
  has_many :flowers
end
