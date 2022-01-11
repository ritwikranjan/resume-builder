class UserController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    user.profile = Profile.new
    if user.save
      user.profile.educations.create
      user.profile.experiences.create
      log_in user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to root_path
    else
      flash[:fail] = "Something went wrong"
      render 'new'
    end
  end

  private

  def user_params
    if params[:password] == params[:password_confirmation]
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    else
      flash[:danger] = "Passwords do not match"
      render 'new'
    end

  end

end
