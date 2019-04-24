Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'tour_agency/index'
  get 'signup' => 'users#new'


  resources :tours
  resources :shedules
  resources :tour_orders
  resources :users
  # root 'tour_agency#index'
  root 'tours#index'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
