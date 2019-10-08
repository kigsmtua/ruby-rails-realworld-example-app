class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :comment

  # This is what happens that come along the user
  #
end
