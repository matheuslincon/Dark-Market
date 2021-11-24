Rails.application.routes.draw do
  root to: 'pages#home'
<<<<<<< HEAD
    get '/my_items', to: 'pages#my_items', as: 'my_items'
=======
  get '/my_items', to: 'pages#my_items', as: 'my_items'
>>>>>>> master
  devise_for :users
  resources :items do
    resources :orders, only: %i[create]
  end
end
