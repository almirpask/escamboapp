Rails.application.routes.draw do

  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    resources :categories, excpet: [:show, :destroy]
    resources :admins, excpet: [:show]
    resources :send_mail, only: [:edit, :create]
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :site do
    get 'home', to: 'home#index'
  end



  root 'site/home#index'

  devise_for :admins, :skip => [:registrations]
  devise_for :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
