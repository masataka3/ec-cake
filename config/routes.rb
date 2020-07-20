Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'homes/about'

   resources :users,only: [:index,:show,:edit,:update]
   resources :address, only: [:index,:edit]
end
