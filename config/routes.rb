Rails.application.routes.draw do
  get 'users/new'
  get 'tour_agency/index'
  get 'signup' => 'users#new'


  resources :tours
  resources :shedules
  resources :tour_orders
  resources :users
  # root 'tour_agency#index'
  root 'tours#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
