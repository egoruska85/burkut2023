class AdminController < ApplicationController
  before_action :set_page_option
  before_action :authenticate_user!
  before_action :redirect
  def index
    @logos = Logo.all
    @logo = Logo.new

    @nophotos = Nophoto.all
    @nophoto = Nophoto.new

    @contactdetails = Contactdetail.all
    @contactdetail = Contactdetail.new
    #############construction###############
    @maincarousels = Maincarousel.all
    @maincarousel = Maincarousel.new

    @services = Service.all
    @service = Service.new
  end

  def editlogo
    @logo = Logo.find(params[:id])
  end
  def editnophoto
    @nophoto = Nophoto.find(params[:id])
  end
  def editcontacts
    @contactdetail = Contactdetail.find(params[:id])
  end
  def editmaincarousels
    @maincarousel = Maincarousel.find(params[:id])
  end
  def editservices
    @service = Service.find(params[:id])
  end
  private
  def set_page_option
    @page_title = 'Административная панель'
  end
  protected
  def redirect
    if current_user.admin != true
      redirect_to root_path
    end
  end
end
