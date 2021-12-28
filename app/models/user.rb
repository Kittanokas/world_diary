class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  validates :nickname, presence: true, length: { in: 1..10 }
  validates :profile, presence: true, length: { maximum: 100 }
  has_many :diaries
end
