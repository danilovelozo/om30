Rails.application.routes.draw do
  root 'municipes#index'

  resources :municipes do
    resources :addresses
  end
 end