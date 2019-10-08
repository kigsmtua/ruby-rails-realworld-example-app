class Article < ApplicationRecord
  belongs_to :user
  has_many :comment, :dependent, :destroy
  has_many :favorite, :dependent, :destroy

  validates :title, presence:true, allow_blank: true
  validates :body, presence:true, allo_blank:false
  validates :slug, uniqueness: true, exclusion: { in: ['feed'] }

end
