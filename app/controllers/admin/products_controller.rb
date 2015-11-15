class Admin::ProductsController < ProductsController
  before_action :authenticate_user!
  before_action :admin_required
  layout 'admin'

  def new
    @product = Product.new
    @photo = @product.build_photo
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        #render json: @product, status: :ok
        format.html { render @product }
        #redirect_to admin_products_path
      else
        format.html { render :new }
      end
    end
  end

  def edit ; end

  def update
    if @product.update(product_params)
      #render{ json: @product, status: :ok }
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  # def index
  #  @products = Product.all
  # end

  # def show ; end

  def destroy
    if @product.destroy
      flash[:success] = 'Product has been destroyed.'
    else
      flash[:danger] = 'Failed.'
    end
    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:page_id, :title, :description, :quantity, :price, photo_attributes: [ :id, :image ])
  end
end
