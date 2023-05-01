class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale, :set_variable

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
    @a = -1
    @time = Time.now
    @main_carousel = Maincarousel.where(id: 2..100)

    @main_carousel_active = Maincarousel.first

    @main_logo = Logo.where(main: true)
    @main_logo.each do |logo|
      @logo_main = logo 
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
