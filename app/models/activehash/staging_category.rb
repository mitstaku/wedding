class StagingCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '著作権等使用料' },
    { id: 2, name: '司会者' },
    { id: 3, name: '席次表' },
    { id: 4, name: 'プロジェクションマッピング' },
  ]
  include ActiveHash::Associations
  has_many :staging_items
end
