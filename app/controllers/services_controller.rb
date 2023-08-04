class ServicesController < ApplicationController
  def new

  end
  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def service_params
    params.require(:service).permit(:title_ru, :title_en, :title_tm, :body_ru, :body_en, :body_tm, :icon)
  end
end
