class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:info] = "User Created Succefully"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end

  def delete
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_no, :email, :password,
                                  :password_confirmation)
    end

    # def logged_in_user
    #   unless logged_in?
    #     store_location
    #     flash[:danger] = "Please log in."
    #     redirect_to login_url
    #   end
    # end

    # def correct_user
    #   @user = User.find(params[:id])
    #   redirect_to(root_url) unless current_user?(@user)
    # end

    # def admin_user
    #   redirect_to(root_url) unless current_user.admin?
    # end
end
