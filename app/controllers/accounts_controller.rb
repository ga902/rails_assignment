class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @user = current_user
    @account = Account.create(user_id: @user.id, account_no: params[:acc_no], ifsc: params[:ifsc_no], swift_no: params[:swift_no])
    if @account.save
      redirect_to root_path, notice: 'Account created successfully'
    else
      redirect_to new_account_path, notice: 'Something went wrong'
    end
  end
end
