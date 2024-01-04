class PreCeremonyCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '新郎衣装1' },
    { id: 3, name: '新郎衣装2' },
    { id: 4, name: '新婦衣装1' },
    { id: 5, name: '新婦衣装2' },
    { id: 6, name: '新婦小物' },
    { id: 7, name: '新郎支度料' },
    { id: 8, name: '新婦支度料' },
    { id: 9, name: 'カメラマン指名料' },
    { id: 10, name: '場所使用料' },
    { id: 11, name: 'スナップアルバム' }
  ]

  include ActiveHash::Associations
  has_many :pre_ceremonies
end
