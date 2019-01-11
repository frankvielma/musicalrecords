Rails.application.routes.draw do
  get 'dashboard/index'

  root to: 'dashboard#index'

  resources :lps, controller: 'l_ps'

  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
