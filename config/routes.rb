Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'scrapers#new'
  resources :scrapers, only: [:new, :show, :create, :index]

end
