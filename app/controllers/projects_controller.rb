class ProjectsController < ApplicationController
  def index
    #@header_picture = Pictureheaderonproject.last
    @projects = Project.limit(9)

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
end
