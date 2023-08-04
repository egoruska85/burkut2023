class MaincarouselsController < ApplicationController
  def new

  end
  def create
    @maincarousel = Maincarousel.new(maincarousel_params)
    if @maincarousel.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @maincarousel = Maincarousel.find(params[:id])
    if @maincarousel.update(maincarousel_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @maincarousel = Maincarousel.find(params[:id])
    @maincarousel.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def maincarousel_params
    params.require(:maincarousel).permit(:title_ru, :title_en, :title_tm, :body_ru, :body_en, :body_tm, :link, :image)
  end
end
