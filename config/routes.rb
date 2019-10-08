Rails.application.routes.draw do

  # This is what happens when such values come along
  # And store the user and the values come here
  # You can
  scope :api, defaults: { format: :json} do
    devise_for :users, controllers: { sessions: :sessions},
               path_names:{ sign_in: :login}
    resource :user, only: [:show, :update]
  end

end
