class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to request.referrer, notice: 'Опубликовано'
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_path, notice: "Удалено"
  end

  private

  def category_params
    params.require(:category).permit(:title_ru, :title_en, :title_tm)
  end
end
