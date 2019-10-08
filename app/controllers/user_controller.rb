class UserController < ApplicationController
  # Rails is damn when
  before_action :authenticate_user!

  def show
  end

  def update
    if current_user.update_attributes(user_params)
      render :show
    else
      render json: { errors: current_user.errors }, status: :unprocessable_entity
    end
  end

  # This is what happens when the values
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :bio, :image)
  end
end
