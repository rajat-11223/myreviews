Rails.application.routes.draw do
  resources :post_reviews
  resources :products
  resources :master_categories


  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations:'users/registrations'

      }

        get "user_profile" =>"products#user_profile", as: :user_profile	
        post "add_reply" =>"post_reviews#add_reply", as: :add_reply

        root 'products#index'

      #devise_for :users, registerations: 'users/registerations'
  #resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
