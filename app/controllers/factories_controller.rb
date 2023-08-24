class FactoriesController < ApplicationController
  before_action :set_page_option
  def index
    @a = -1
    @factorycarouusels = Factorycarouusel.where(id: 2..100)
    @factorycarouusel_active = Factorycarouusel.first

    @factoryabout = Factoryabout.last

    @motto = Motto.last


    @products = Product.all


    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @factory_service = @factoryabout.service_ru.upcase
      @factory_about = @factoryabout.body_ru
    elsif params[:locale] == 'ru'
      @factory_service = @factoryabout.service_ru.upcase
      @factory_about = @factoryabout.body_ru
    elsif params[:locale] == 'en'
      @factory_service = @factoryabout.service_en.upcase
      @factory_about = @factoryabout.body_en
    elsif params[:locale] == 'tm'
      @factory_service = @factoryabout.service_tm.upcase
      @factory_about = @factoryabout.body_tm
    end
    @factorycertificates = Factorycertificate.all
  end
  def set_page_option
    @page_title = t('navbar.confectionery_factory').capitalize!
  end
end
