class Country < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Africa' },
    { id: 3, name: 'Americas' },
    { id: 4, name: 'Asia' },
    { id: 5, name: 'Europe' },
    { id: 6, name: 'Oceania' }
  ]

  include ActiveHash::Associations
  has_many :diaries
end
