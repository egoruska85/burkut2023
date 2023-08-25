class AdminController < ApplicationController
  before_action :set_page_option, :authenticate_user!, :redirect

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

    @constructioncertificates = Constructioncertificate.all
    @onstructioncertificate = Constructioncertificate.new

    @peculiarities = Peculiarity.all
    @peculiarity = Peculiarity.new

    @constructionabouts = Constructionabout.all
    @constructionabout = Constructionabout.new

    @projects = Project.all
    @project = Project.new

    @pictureheaderonprojects = Pictureheaderonproject.all
    @pictureheaderonproject = Pictureheaderonproject.new

    @factorycarouusels = Factorycarouusel.all
    @factorycarouusel = Factorycarouusel.new

    @factoryabouts = Factoryabout.all
    @factoryabout = Factoryabout.new

    @slogans = Slogan.all
    @slogan = Slogan.new

    @factorycertificates = Factorycertificate.all
    @factorycertificate = Factorycertificate.new

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
  def editconstructioncertificates
    @constructioncertificate = Constructioncertificate.find(params[:id])
  end
  def editpeculiarities
    @peculiarity = Peculiarity.find(params[:id])
  end
  def editconstructionabouts
    @constructionabout = Constructionabout.find(params[:id])
  end
  def editprojects
    @project = Project.find(params[:id])
  end
  def editpictureheaderonprojects
    @pictureheaderonproject = Pictureheaderonproject.find(params[:id])
  end
  def editfactorycarouusels
    @factorycarouusel = Factorycarouusel.find(params[:id])
  end
  def editfactoryabouts
    @factoryabout = Factoryabout.find(params[:id])
  end
  def editslogans
    @slogan = Slogan.find(params[:id])
  end
  def editfactorycertificates
    @factorycertificate = Factorycertificate.find(params[:id])
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
