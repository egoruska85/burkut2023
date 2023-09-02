Rails.application.routes.draw do

  scope "(:locale)", :locale => /ru|en|tm/ do
    mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
    devise_for :users

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "main#index"
    get '/constructions', to: 'constructions#index'

    resources :projects, path: '/constructions/projects', only: [ :index, :show, :new, :create, :update, :destroy ]
    resources :contacts, path: '/constructions/contacts'



    get "/factories", to: 'factories#index'

    resources :products, path: '/factories/products', only: [ :index, :show, :new, :create, :update, :destroy ]
    resources :factorycontacts, path: 'factories/factorycontacts', only: :index

    resources :admin do
      member {get :editlogo}
      member {get :editnophoto}
      member {get :editcontacts}
      member {get :editmaincarousels}
      member {get :editservices}
      member {get :editconstructioncertificates}
      member {get :editpeculiarities}
      member {get :editconstructionabouts}
      member {get :editprojects}
      member {get :editpictureheaderonprojects}
      member {get :editfactorycarouusels}
      member {get :editfactoryabouts}
      member {get :editslogans}
      member {get :editfactorycertificates}
      member {get :editcategories}
      member {get :editproducts}
      member {get :editdependproducts}
    end

    resources :logos
    resources :nophotos
    resources :contactdetails
    resources :maincarousels
    resources :services
    resources :constructioncertificates
    resources :peculiarities
    resources :constructionabouts
    resources :pictureheaderonprojects
    resources :factorycarouusels
    resources :factoryabouts
    resources :slogans
    resources :factorycertificates
    resources :categories
    resources :dependproducts


    # Defines the root path route ("/")
    # root "articles#index"
  end
end
