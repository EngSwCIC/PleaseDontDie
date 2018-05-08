Rails.application.routes.draw do
  namespace :site do
    get 'home', to: 'home#index'
  end
  devise_for :users

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
