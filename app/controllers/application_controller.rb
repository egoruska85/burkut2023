class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale, :set_variable, :set_about, :contact_details

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
    @categories = Category.all
    @products = Product.all

    @time = Time.now
    @main_carousel = Maincarousel.all

    @header_picture = Pictureheaderonproject.last

    @main_logo = Logo.where(main: true)
    @logo = Logo.where(main: false)

    @main_logo.each do |logo|
      @logo_main = logo
    end
    @logo.each do |logo|
      @logotype = logo
    end
    @contact = Contact.new
    @nophoto = Nophoto.last
  end
  def set_about

  end
  def contact_details
    @contact_detail_factory = Contactdetail.first
    @contact_detail_construction = Contactdetail.last
  end

  protected
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
