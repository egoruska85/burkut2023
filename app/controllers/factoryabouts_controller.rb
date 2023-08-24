class FactoryaboutsController < ApplicationController
  def create
    @factoryabout = Factoryabout.new(factoryabout_params)
    if @factoryabout.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"  
    end
  end

  def update
    @factoryabout = Factoryabout.find(params[:id])
    if @factoryabout.update(factoryabout_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def destroy
    @factoryabout = Factoryabout.find(params[:id])
    @factoryabout.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def factoryabout_params
    params.require(:factoryabout).permit(:name, :service_ru, :service_en, :service_tm, :body_ru, :body_en, :body_tm, :logo)
  end
end
