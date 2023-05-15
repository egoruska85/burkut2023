class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale, :set_variable, :set_about

  private

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end
  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
  def default_url_options
    { locale: I18n.locale }
  end
  def set_variable
  #@organization = Organization.first

    @time = Time.now
    @main_carousel = Maincarousel.all



    @main_logo = Logo.where(main: true)
    @logo = Logo.where(main: false)

    @main_logo.each do |logo|
      @logo_main = logo
    end
    @logo.each do |logo|
      @logotype = logo
    end
    
  end
  def set_about
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


  protected
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
