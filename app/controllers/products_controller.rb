class ProductsController < ApplicationController
  before_action :set_page_option
  def index
    @products = Product.all



    @categories = Category.all


  end
  def show
    @product = Product.find(params[:id])
  end
  def set_page_option
    @page_title = t('navbar.confectionery_factory').capitalize! + ' - ' + t('navbar.products')
  end
end
