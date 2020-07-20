Rails.application.routes.draw do


  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  namespace :admin do
   resources :products
   resources :genres
   resources :orders, only: [:index,:show,:update]
   resources :users, only: [:index, :show, :edit,:update]
   get 'homes/top'
  end
#user_routes
  devise_for :users
  root 'homes#top'
  get 'homes/about'

   resources :users,only: [:index,:show,:edit,:update]
   get 'users/unsubscribed'
   patch 'users/withdraw'
   resources :addresses, only: [:index,:edit,:create,:update,:destroy]
   resources :products, only: [:index,:show]

   resources :cart_products, only: [:index, :edit, :update, :destroy] do
   	collection do
   		delete 'destroy_all'
   	end
   end
   post 'cart_products/add_product'
   resources :orders, only: [:index,:show,:new,:create]do
     collection do
     get :confirm
     post :complete
   end
end
end
