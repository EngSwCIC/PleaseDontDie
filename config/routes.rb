Rails.application.routes.draw do

  resources :groups do
    resources :pets
  end

  # routes home
  root 'home#index'
  get 'home', to: 'home#index'

  # route users

  post 'group/:id/add_user', to: 'groups#add_user', as: 'add_group_user'
  resources :profile_user, only: [:edit, :update]
  get 'user/:id', to: 'profile_user#index', as: 'user'

  # routes devise
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
