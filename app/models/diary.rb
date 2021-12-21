class Diary < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
  validates :city, presence: true
  validates :title, presence: true
end
