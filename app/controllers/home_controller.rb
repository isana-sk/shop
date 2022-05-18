class HomeController < ApplicationController
  def index                #for User and Admin
    @products = Product.all
    @category = ProductCategory.all
  end

  def account
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(balance:current_user.balance+params[:user][:balance].to_f)
      redirect_to root_url
    end
  end

  def show
    @category = ProductCategory.find(params[:id])  
  end

  def user_param
    params.require(:user).permit(:balance)
  end
end
