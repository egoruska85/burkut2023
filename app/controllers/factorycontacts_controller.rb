class FactorycontactsController < ApplicationController
  before_action :set_page_option
  def index
  end
  def set_page_option
    @page_title = t('navbar.confectionery_factory').capitalize! + ' - ' + t('navbar.contacts')
  end
end
