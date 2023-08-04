class NophotosController < ApplicationController
  def new

  end
  def create
    @nophoto = Nophoto.new(nophoto_params)


    if @nophoto.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @nophoto = Nophoto.find(params[:id])

    if @nophoto.update(nophoto_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @nophoto = Nophoto.find(params[:id])
    @nophoto.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def nophoto_params
    params.require(:nophoto).permit(:img)
  end
end
