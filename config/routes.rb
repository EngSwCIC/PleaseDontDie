Rails.application.routes.draw do
# rout groups
  resources :groups do
    resources :pets
  end
  root 'home#index'
# route users
  get 'user/:id', to: 'users#index', as: 'user'
#routes home
  get 'home', to: 'home#index'
#routes devise
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
