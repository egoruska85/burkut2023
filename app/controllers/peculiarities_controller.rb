class PeculiaritiesController < ApplicationController
  def new


  end
  def create
    @peculiarity = Peculiarity.new(peculiarity_params)
    if @peculiarity.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @peculiarity = Peculiarity.find(params[:id])
    if @peculiarity.update(peculiarity_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @peculiarity = Peculiarity.find(params[:id])
    @peculiarity.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def peculiarity_params
    params.require(:peculiarity).permit(:title_ru, :title_en, :title_tm, :body_ru, :body_en, :body_tm, :style)
  end


end
