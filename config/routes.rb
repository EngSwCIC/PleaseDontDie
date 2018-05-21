Rails.application.routes.draw do
  get 'users/index'
# rout groups
  resources :groups do
    resources :pets
  end
  root 'home#index'
# route users
  get 'perfil/:id', to: 'users#index'
#routes home
  get 'home', to: 'home#index'
#routes devise
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
