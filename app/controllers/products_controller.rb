class ProductsController < ApplicationController
  before_action :set_product, except: [:new, :create, :index]
  def show
    render "pages/#{@product.page.folder_name}.html.haml", layout: false
  end

  def index
    @products = Product.all
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

end