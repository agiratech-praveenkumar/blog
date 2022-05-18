class Api::Users::RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.create user_params
    if @user.save
      render json: { message: "Success" } 
    else
      render json: { message: "Error creating User" }
    end
  end

  private

  def user_params
    params.require(:users).permit(
      :username,
      :email,
      :name,
      :password
    )
  end
end