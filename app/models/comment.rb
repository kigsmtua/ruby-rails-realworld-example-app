class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true, allow_blank: false
end
