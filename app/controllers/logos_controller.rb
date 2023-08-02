class LogosController < ApplicationController
  def new

  end
  def create
    @logo = Logo.new(logo_params)


    if @logo.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @logo = Logo.find(params[:id])

    if @logo.update(logo_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  private
  def logo_params
    params.require(:logo).permit(:logo, :main)
  end
end
