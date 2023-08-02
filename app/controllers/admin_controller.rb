class AdminController < ApplicationController
  before_action :set_page_option
  before_action :authenticate_user!
  before_action :redirect
  def index
    @nophotos = Nophoto.all
    @logos = Logo.all
    @logo = Logo.new
    @nophoto = Nophoto.new

  end

  def editlogo
    @logo = Logo.find(params[:id])
  end
  def editnophoto
    @nophoto = Nophoto.find(params[:id])
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
