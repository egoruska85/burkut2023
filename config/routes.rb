Rails.application.routes.draw do
  scope "(:locale)", :locale => /ru|en|tm/ do
    mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
    devise_for :users

    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "main#index"
    get '/constructions', to: 'constructions#index'

    resources :projects, path: '/constructions/projects', only: [ :index, :show ]
    resources :contacts, path: '/constructions/contacts'

    resources :factories

    resources :admin, only: :index

    # Defines the root path route ("/")
    # root "articles#index"
  end
end
