class ConstructioncertificatesController < ApplicationController
  def new

  end
  def create
    @constructioncertificate = Constructioncertificate.new(constructioncertificate_params)
    if @constructioncertificate.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @constructioncertificate = Constructioncertificate.find(params[:id])
    if @constructioncertificate.update(constructioncertificate_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @constructioncertificate = Constructioncertificate.find(params[:id])
    @constructioncertificate.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def constructioncertificate_params
    params.require(:constructioncertificate).permit(:title_ru, :title_en, :title_tm, :body_ru, :body_en, :body_tm, :picture)
  end
end
