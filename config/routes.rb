Rails.application.routes.draw do

  resources :groups do
    resources :pets
  end

  get 'user/:id/pets', to: 'profile_user#pets', as: 'user_pets'
  get 'user/:id/duties', to: 'profile_user#duties', as: 'user_duties'
  get 'user/:id/friends', to: 'profile_user#friends', as: 'user_friends'

  resources :pets do
    resources :duties
  end
  post 'pets/:pet_id/duties/:id/set_done', to: 'duties#set_done', as: 'duty_done'

  resources :species do
    resources :needs
  end

  # routes home
  root 'home#index'
  get 'home', to: 'home#index'

  # route users
  resources :profile_user, only: [:index, :show, :edit, :update]
  post 'group/:id/add_user', to: 'groups#add_user', as: 'add_group_user'

  get 'user/:id', to: 'profile_user#show', as: 'user'

  # routes devise
  devise_for :users, controllers: {registrations: 'users/registrations',sessions: 'users/sessions'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
