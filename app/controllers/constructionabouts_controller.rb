class ConstructionaboutsController < ApplicationController
  def new

  end
  def create
    @constructionabout = Constructionabout.new(constructionabout_params)
    if @constructionabout.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @constructionabout = Constructionabout.find(params[:id])
    if @constructionabout.update(constructionabout_params)
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @constructionabout = Constructionabout.find(params[:id])
    @constructionabout.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def constructionabout_params
    params.require(:constructionabout).permit(:title_organization,
                                              :motto_ru, :motto_en, :motto_tm,
                                              :about_ru, :about_en, :about_tm,
                                              :vision_ru, :vision_en, :vision_tm,
                                              :values_ru, :values_en, :values_tm,
                                              :picture, :video
                                            )
  end
end
