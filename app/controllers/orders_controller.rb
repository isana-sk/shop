class OrdersController < ApplicationController
  def index
    @order = Order.all
    @product = Product.find(params[:id])
    @category = ProductCategory.all.where(category_id:nil)
  end

  def create
    user = User.find(params[:user_id])
    @product = Product.find(params[:product_id])
    if user.balance > @product.price
      user.update(balance:user.balance-@product.price)
      @order = Order.new(order_params)
      seller = @product.user
      seller.update(balance:seller.balance+@product.price)
      if @order.save
        redirect_to root_url
      end
    else
      redirect_to :action => 'index', :id => @product
    end
  end

  def show
    @category = ProductCategory.all.where(category_id:nil)
    @order = Order.all
    @customer = current_user.orders
  end

  def order_params
    params.permit(:user_id, :product_id)
  end
end
