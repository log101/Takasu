Rails.application.routes.draw do
  resources :trades
  get 'search/', to: 'search#index'
  get 'profile/show'
  resources :mangas, except: [:index, :show]

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id', to: 'profile#show', as: 'user'
  root 'home#index'
end
