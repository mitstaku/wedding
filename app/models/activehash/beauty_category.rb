class BeautyCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '新婦支度料' },
    { id: 3, name: '新郎支度料' },
    { id: 4, name: 'メイクリハーサル' },
    { id: 5, name: 'アテンド料' },
  ]
  include ActiveHash::Associations
  has_many :beauties
end
