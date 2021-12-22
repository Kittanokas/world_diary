class Diary < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
  validates :city, presence: true
  validates :title, presence: true
  validates :country_id, numericality: { other_than: 1 ,message: "can't be blank" } 
  validates :image, presence: true
end
