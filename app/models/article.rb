class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, :dependent, :destroy
  has_many :favorites, :dependent, :destroy

  validates :title, presence:true, allow_blank: true
  validates :body, presence:true, allo_blank:false
  validates :slug, uniqueness: true, exclusion: { in: ['feed'] }

  
  scope :authored_by, -> (username) { where(user:User.where(username: username)) }
  scope :favorited_by, -> (username) {join(:favorites).where(user:User.where(username: username))}

end
