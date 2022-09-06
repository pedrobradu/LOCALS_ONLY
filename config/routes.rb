Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: "pages#landingpage"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    get "home", to: "pages#home"

  resources :activities, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    resources :wishlist_items, only: [:new, :create]
    resources :users, only: [:destroy]
    resources :checkins, only: [:create]
  end

  #resources :linked_tags, only: [:create], tem que nestar em algum lugar
  resources :wishlists, only: [:new, :create, :show ]
  resources :wishlist_items, only: [:destroy]
  resources :users, only: [:show, :destroy]
  resources :reviews, only: [:destroy]
  resources :checkins, only: [:update]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

end
