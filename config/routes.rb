Rails.application.routes.draw do
  get 'tour_agency/index'

  resources :tours do
    resources :shedules
  end

  # root 'tour_agency#index'
  root 'tours#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
