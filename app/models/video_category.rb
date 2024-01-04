class VideoCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: 'オープニングムービー' },
    { id: 2, name: 'プロフィールムービー' },
    { id: 3, name: 'エンドロール' },
  ]

  include ActiveHash::Associations
  has_many :video
end
