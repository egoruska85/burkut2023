class ProductsController < ApplicationController
  before_action :set_page_option
  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_path, notice: "Удалено"
  end

  def set_page_option
    @page_title = t('navbar.confectionery_factory').capitalize! + ' - ' + t('navbar.products')
  end

  private
  def product_params
    params.require(:product).permit(:title_ru, :title_en, :title_tm, :desc_ru, :desc_en, :desc_tm, :category_id, :picture)
  end
end
