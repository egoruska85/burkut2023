class FactorycarouuselsController < ApplicationController
  def new

  end
  def create
    @factorycarouusel = Factorycarouusel.new(factorycarouusel_params)
    if @factorycarouusel.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @factorycarouusel = Factorycarouusel.find(params[:id])
    if @factorycarouusel.update(factorycarouusel_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @factorycarouusel = Factorycarouusel.find(params[:id])
    @factorycarouusel.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def factorycarouusel_params
    params.require(:factorycarouusel).permit(:title_ru, :title_en, :title_tm, :desc_ru, :desc_en, :desc_tm, :link, :picture)
  end
end
