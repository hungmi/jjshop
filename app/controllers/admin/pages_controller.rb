class Admin::PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout 'admin'

  def new
    @page = Page.new
    #@photo = @page.build_photo
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to admin_pages_path
    else
      render :new
    end
  end

  def edit ; end

  def update
    if @page.update(page_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def index
   @pages = Page.all
  end

  def destroy
    if @page.destroy
      flash[:success] = 'Page has been destroyed.'
    else
      flash[:danger] = 'Failed.'
    end
    redirect_to admin_pages_path
  end

  private

  def page_params
    params.require(:page).permit(:folder_name, :title, :description, :price, photo_attributes: [ :id, :image ])
  end
end
