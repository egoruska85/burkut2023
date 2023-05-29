class ConstructionsController < ApplicationController
  def index

    @constructioncertificate = Constructioncertificate.all

    @peculiarity1 = Peculiarity.first
    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @peculiarity1_title = @peculiarity1.title_ru.upcase
      @peculiarity1_body = @peculiarity1.body_ru
    elsif params[:locale] == 'ru'
      @peculiarity1_title = @peculiarity1.title_ru.upcase
      @peculiarity1_body = @peculiarity1.body_ru
    elsif params[:locale] == 'en'
      @peculiarity1_title = @peculiarity1.title_en.upcase
      @peculiarity1_body = @peculiarity1.body_en
    elsif params[:locale] == 'tm'
      @peculiarity1_title = @peculiarity1.title_tm.upcase
      @peculiarity1_body = @peculiarity1.body_tm
    end
    @peculiarity2 = Peculiarity.second
    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @peculiarity2_title = @peculiarity2.title_ru.upcase
      @peculiarity2_body = @peculiarity2.body_ru
    elsif params[:locale] == 'ru'
      @peculiarity2_title = @peculiarity2.title_ru.upcase
      @peculiarity2_body = @peculiarity2.body_ru
    elsif params[:locale] == 'en'
      @peculiarity2_title = @peculiarity2.title_en.upcase
      @peculiarity2_body = @peculiarity2.body_en
    elsif params[:locale] == 'tm'
      @peculiarity2_title = @peculiarity2.title_tm.upcase
      @peculiarity2_body = @peculiarity2.body_tm
    end
    @peculiarity3 = Peculiarity.third
    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @peculiarity3_title = @peculiarity3.title_ru.upcase
      @peculiarity3_body = @peculiarity3.body_ru
    elsif params[:locale] == 'ru'
      @peculiarity3_title = @peculiarity3.title_ru.upcase
      @peculiarity3_body = @peculiarity3.body_ru
    elsif params[:locale] == 'en'
      @peculiarity3_title = @peculiarity3.title_en.upcase
      @peculiarity3_body = @peculiarity3.body_en
    elsif params[:locale] == 'tm'
      @peculiarity3_title = @peculiarity3.title_tm.upcase
      @peculiarity3_body = @peculiarity3.body_tm
    end

    @service_1 = Service.first

    @service_2 = Service.second
    @service_3 = Service.third
    @service_4 = Service.fourth

    @construction_about = Constructionabout.first
    if params[:locale] != true and params[:locale] != 'en' and params[:locale] != 'tm' and params[:locale] != 'ru'
      @service_1_title = @service_1.title_ru
      @service_1_body = @service_1.body_ru
      @service_2_title = @service_2.title_ru
      @service_2_body = @service_2.body_ru
      @service_3_title = @service_3.title_ru
      @service_3_body = @service_3.body_ru
      @service_4_title = @service_4.title_ru
      @service_4_body = @service_4.body_ru
    elsif params[:locale] == 'ru'
      @service_1_title = @service_1.title_ru
      @service_1_body = @service_1.body_ru
      @service_2_title = @service_2.title_ru
      @service_2_body = @service_2.body_ru
      @service_3_title = @service_3.title_ru
      @service_3_body = @service_3.body_ru
      @service_4_title = @service_4.title_ru
      @service_4_body = @service_4.body_ru
    elsif params[:locale] == 'en'
      @service_1_title = @service_1.title_en
      @service_1_body = @service_1.body_en
      @service_2_title = @service_2.title_en
      @service_2_body = @service_2.body_en
      @service_3_title = @service_3.title_en
      @service_3_body = @service_3.body_en
      @service_4_title = @service_4.title_en
      @service_4_body = @service_4.body_en
    elsif params[:locale] == 'tm'
      @service_1_title = @service_1.title_tm
      @service_1_body = @service_1.body_tm
      @service_2_title = @service_2.title_tm
      @service_2_body = @service_2.body_tm
      @service_3_title = @service_3.title_tm
      @service_3_body = @service_3.body_tm
      @service_4_title = @service_4.title_tm
      @service_4_body = @service_4.body_tm
    end




  end
end
