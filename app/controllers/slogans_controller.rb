class SlogansController < ApplicationController
  def create
    @slogan = Slogan.new(slogan_params)
    if @slogan.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def update
    @slogan = Slogan.find(params[:id])
    if @slogan.update(slogan_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"  
    end
  end

  def destroy
    @slogan = Slogan.find(params[:id])
    @slogan.destroy
    redirect_to admin_path, notice: "Удалено"
  end

  private
  def slogan_params
    params.require(:slogan).permit(:title_ru, :title_en, :title_tm)
  end
end
