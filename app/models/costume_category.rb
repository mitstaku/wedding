class CostumeCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '新郎衣装1' },
    { id: 3, name: '新郎衣装2' },
    { id: 4, name: '新婦衣装1' },
    { id: 5, name: '新婦衣装2' },
    { id: 6, name: '新婦小物' }
  ]
  include ActiveHash::Associations
  has_many :costumes
end
