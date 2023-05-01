class MainController < ApplicationController
  def index
    @mainabout = Mainabout.first
  end
end
