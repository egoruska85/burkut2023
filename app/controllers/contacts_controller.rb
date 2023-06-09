class ContactsController < ApplicationController
  def index

  end
  def create
    @contact = Contact.new(params[:contact])
    @contact.sender = 'egoruska85@mail.ru'
    @contact.request = request

    if @contact.deliver
      flash.now[:error] = nil
      redirect_to contacts_path, info: "Отправлено"
    else
      flash.now[:error] != nil


      redirect_to contacts_path, info: "Не отправлено"
    end
  end
end
