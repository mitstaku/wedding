class GiftCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '引出物' },
    { id: 3, name: '引菓子' },
    { id: 4, name: 'ブライダルバック' }
  ]
  include ActiveHash::Associations
  has_many :gifts
end
