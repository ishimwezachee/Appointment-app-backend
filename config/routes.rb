Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'reviews/index'
  get 'ratings/index'
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#islogged_in?'
  
  resources :users, only: [:create, :show, :index] do
    resources :items do
          resources :reservations
          resources :reviews, only: %i[:create :destroy :index]
          resources :ratings, only: %i[:create :index]
    end
  end

  root to: "users#index"

end
