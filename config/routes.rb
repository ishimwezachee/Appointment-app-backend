Rails.application.routes.draw do
  get 'reviews/index'
  get 'ratings/index'
  devise_for :users
  resources :items
  
  resources :users do
    resources :reservations do
          resources :items do 
            resources :reviews, only: %i[:create :index]
            resources :ratings, only: %i[:create :index]
          end        
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "users#index"
  # reservations/id/items

end
