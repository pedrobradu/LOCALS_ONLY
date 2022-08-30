Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :activities, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    #resources :wishlist_itens, only: [:create], tem que nestar em algum lugar
  end

  resources :wishlists, only: [:new, :create]
  #resources :linked_tags, only: [:create], tem que nestar em algum lugar

  resources :users, only: [:show]

  
end
