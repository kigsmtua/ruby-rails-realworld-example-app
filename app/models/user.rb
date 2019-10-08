class User < ApplicationRecord


  has_many :articles, dependent:destroy
  has_many :favorites, dependent:destroy
  has_many :comments, dependent:destroy



  validates :username, uniqueness: { case_sensitive: true },
            format: { with: /\A[a-zA-Z0-9]+\z/ },
            presence: true,
            allow_blank: false

  acts_as_follower
  acts_as_followable
end
