class FactorycertificatesController < ApplicationController
  def create
    @factorycertificate = Factorycertificate.new(factorycertificate_params)
    if @factorycertificate.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def update
    @factorycertificate = Factorycertificate.find(params[:id])
    if @factorycertificate.update(factorycertificate_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end

  def destroy
    @factorycertificate = Factorycertificate.find(params[:id])
    @factorycertificate.destroy
    redirect_to admin_path, notice: "Удалено"
  end

  private
  def factorycertificate_params
    params.require(:factorycertificate).permit(:title_ru, :title_en, :title_tm, :desc_ru, :desc_en, :desc_tm, :picture)
  end
end
