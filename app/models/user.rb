class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

 
  validates :username, uniqueness:{case_sensitive:true},
            allow_blank:false,
            presence: true,
            format: {with: /\A[a-zA-Z0-9]+\z/}


  acts_as_follower
  acts_as_followable

  def generate_jwt
    JWT.encode({ id: id,
                 exp: 60.days.from_now.to_i },
               Rails.application.secrets.secret_key_base)
  end


  def favorite(article)
    favorites.find_or_create(article)
  end

  def unfavorite(article)
    favorites.where(article:article).destroy_all
  end

  def favorited(article)
    favorites.find_by(article:article).present?
  end

end
