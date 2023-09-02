class DependproductsController < ApplicationController
  def create
    @dependproduct = Dependproduct.new(dependproduct_params)
    if @dependproduct.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def update
    @dependproduct = Dependproduct.find(params[:id])
    if @dependproduct.update(dependproduct_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def destroy
    @dependproduct = Dependproduct.find(params[:id])
    @dependproduct.destroy
    redirect_to admin_path, notice: "Удалено"
  end

  private
  def dependproduct_params
    params.require(:dependproduct).permit(:title_ru, :title_en, :title_tm, :product_id, :picture)
  end
end
