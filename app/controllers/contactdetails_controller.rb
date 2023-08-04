class ContactdetailsController < ApplicationController
  def new

  end
  def create
    @contactdetail = Contactdetail.new(contactdetail_params)


    if @contactdetail.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @contactdetail = Contactdetail.find(params[:id])


    if @contactdetail.update(contactdetail_params)
      redirect_to admin_path, notice: "Изменено"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @contactdetail = Contactdetail.find(params[:id])
    @contactdetail.destroy
    redirect_to admin_path, notice: "Удалено" 
  end
  private
  def contactdetail_params
    params.require(:contactdetail).permit(:email1, :email2, :email3, :address_ru, :address_en, :address_tm, :phone1, :phone2, :phone3, :phone4)
  end
end
