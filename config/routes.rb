Rails.application.routes.draw do
  get 'reviews/index'
  get 'ratings/index'
  get '/logged_in', to: 'sessions#is_logged_in?'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :items
  
  resources :users, only: [:create, :show, :index] do
    resources :items do
          resources :reservations
          resources :reviews, only: %i[:create :destroy :index]
          resources :ratings, only: %i[:create :index]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "users#index"
  # reservations/id/items

end
