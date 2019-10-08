class Article < ApplicationRecord
  belongs_to :user
  has_many :comment, :dependent, :destroy
  has_many :favorite, :dependent, :destroy

  # This means that the slug is not generated here
  # What do you need to generate a slug
  # Taggable , you pass a taglist that is associated by the user
  # Does this even make any sense ?
  validates :title, presence:true, allow_blank: true
  validates :body, presence:true, allo_blank:false


end
