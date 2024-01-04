class PhotoCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'スナップアルバム' },
  ]
  include ActiveHash::Associations
  has_many :photos
end
