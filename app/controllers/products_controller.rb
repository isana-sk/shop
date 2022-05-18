class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_url
    end
  end

  def edit
    @product = Product.find(params[:id])
    @category = ProductCategory.find(@product.product_category_id).category.subcategories
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_param)
      redirect_to root_url
    end
  end
  
  def show
    @category = ProductCategory.all
    @product = Product.find(params[:id])
  end

  def destroy
    Product.find(params[:id]).delete
    redirect_to root_url
  end

  private
  def product_params
    params.permit(:user_id, :product_category_id, :name, :price, :description, :quantity, :image)
  end

  def product_param
    params.require(:product).permit(:user_id, :product_category_id, :name, :price, :description, :quantity, :image)
  end
end
