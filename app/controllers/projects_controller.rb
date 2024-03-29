class ProjectsController < ApplicationController
  before_action :set_page_option
  def index
    #@header_picture = Pictureheaderonproject.last
    @projects = Project.limit(9)
    @construction_about = Constructionabout.first
    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @construction_motto = @construction_about.motto_ru
      @construction_about_about = @construction_about.about_ru
      @construction_about_vision = @construction_about.vision_ru
      @construction_about_values = @construction_about.values_ru
    elsif params[:locale] == 'ru'
      @construction_motto = @construction_about.motto_ru
      @construction_about_about = @construction_about.about_ru
      @construction_about_vision = @construction_about.vision_ru
      @construction_about_values = @construction_about.values_ru
    elsif params[:locale] == 'en'
      @construction_motto = @construction_about.motto_en
      @construction_about_about = @construction_about.about_en
      @construction_about_vision = @construction_about.vision_en
      @construction_about_values = @construction_about.values_en
    elsif params[:locale] == 'tm'
      @construction_motto = @construction_about.motto_tm
      @construction_about_about = @construction_about.about_tm
      @construction_about_vision = @construction_about.vision_tm
      @construction_about_values = @construction_about.values_tm
    end

  end
  def show
    @header_picture = Pictureheaderonproject.last
    @project = Project.find(params[:id])
    @project_image = @project.pictures.first
    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @project_title = @project.title_ru.upcase
      @project_desc = @project.desc_ru
    elsif params[:locale] == 'ru'
      @project_title = @project.title_ru.upcase
      @project_desc = @project.desc_ru
    elsif params[:locale] == 'en'
      @project_title = @project.title_en.upcase
      @project_desc = @project.desc_en
    elsif params[:locale] == 'tm'
      @project_title = @project.title_tm.upcase
      @project_desc = @project.desc_tm
    end
  end

  def new


  end
  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to request.referrer, notice: "Опубликовано"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def update
    @project = Project.find(params[:id])
    if @product.update(project_params)
      redirect_to admin_path, notice: "Изменено"
    else
      redirect_to request.referrer, notice: "Ошибка проверьте правильность полей"
    end
  end
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_path, notice: "Удалено"
  end
  private
  def project_params
    params.require(:project).permit(:title_ru, :title_en, :title_tm, :body_ru, :body_en, :body_tm, :pictures => [])
  end
  def set_page_option
    @page_title = t('navbar.construction').capitalize! + ' - ' + t('navbar.projects')
  end
end
