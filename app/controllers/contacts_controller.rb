class ContactsController < ApplicationController
  before_action :set_page_option
  def index

  end
  def create
    @contact = Contact.new(params[:contact])
    @contact.sender = 'egoruska85@mail.ru'
    @contact.request = request

    if @contact.deliver
      flash.now[:error] = nil
      redirect_to request.referrer, info: "Отправлено"
    else
      flash.now[:error] != nil


      redirect_to request.referrer, info: "Не отправлено"
    end
  end
  private
  def set_page_option
    @page_title = t('navbar.construction').capitalize! + ' - ' + t('navbar.contacts')
  end
end
