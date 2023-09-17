Rails.application.routes.draw do
  get 'render/index'

  # For more details on this file's DSL, see https://guides.rubyonrails.org/routing.html
  root 'render#index'
 end