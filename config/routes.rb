Rails.application.routes.draw do
  root to: 'pages#home'
    get '/my_items', to: 'pages#my_items', as: 'my_items'
  devise_for :users
  resources :items do
    resources :orders, only: %i[create]
  end
end
