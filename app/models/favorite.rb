class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :comment


  # Does this mean that such values need to come back for usage?
  # This means that we can use such values up for manufacturing
end
