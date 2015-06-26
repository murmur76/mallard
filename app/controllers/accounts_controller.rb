class AccountsController < ApplicationController
  def create
    @account = Account.new(account_params)
    @account.save
    redirect_to @account
  end

  def show
    @account = Account.find(params[:id])
  end

  private
  def account_params
    params.require(:account).permit(:email, :password)
  end
end
