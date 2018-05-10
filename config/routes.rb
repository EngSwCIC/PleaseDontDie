Rails.application.routes.draw do
  root 'home#index'
# route users
  get 'perfil', to: 'users#index'
#routes groups
  resources :groups
#routes home
  get 'home', to: 'home#index'
#routes devise
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
