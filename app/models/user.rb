class User < ApplicationRecord
  has_many :user_videos
  has_many :tokens
  has_many :videos, through: :user_videos
  has_many :friendships
  has_many :friends, through: :friendships

  validates :email, uniqueness: true, presence: true
  validates_presence_of :password
  validates_presence_of :first_name

  enum role: [:default, :admin]
  has_secure_password

  def connection?(name)
     if self.tokens.where(nickname: name).first.nickname
       true
     else
       false
     end
  end


end
