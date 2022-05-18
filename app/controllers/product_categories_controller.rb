class ProductCategoriesController < ApplicationController
  
  def new
    @category = ProductCategory.new
  end
  
  def create
    @category = ProductCategory.new(category_params)
    if @category.save
      redirect_to root_url
    end
  end
  
  def show
    @product = Product.all
    @category = ProductCategory.all.where(category_id:nil)
    @subcategory = ProductCategory.find(params[:id])
  end

  private

  def category_params
    debugger
    params.permit(:name, :category_id)
  end

end
