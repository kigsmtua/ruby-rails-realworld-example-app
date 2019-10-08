class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorits, dependent: :destroy

  acts_as_follower
  acts_as_followable

end
