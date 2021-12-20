class Diary < ApplicationRecord
  # validates :text, presence: true
  belongs_to :user
  validates :content, presence: true
end
