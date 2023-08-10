class PictureheaderonprojectsController < ApplicationController
  def index

  end
  def create
    @pictureheaderonproject = Pictureheaderonproject.new(pictureheaderonproject_params)
    if @pictureheaderonproject.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @pictureheaderonproject = Pictureheaderonproject.find(params[:id])
    if @pictureheaderonproject.update(pictureheaderonproject_params)
      redirect_to admin_path, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @pictureheaderonproject = Pictureheaderonproject.find(params[:id])
    @pictureheaderonproject.destroy
    redirect_to request.referrer, notice: "Удалено"
  end
  private
  def pictureheaderonproject_params
    params.require(:pictureheaderonproject).permit(:header_picture)
  end
end
