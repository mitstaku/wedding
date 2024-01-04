class PrintCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '招待状' },
    { id: 3, name: '席次表' },
    { id: 4, name: '席札' }
  ]
  include ActiveHash::Associations
  has_many :prints
end
