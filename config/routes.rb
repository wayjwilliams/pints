Rails.application.routes.draw do
  resources :pints

  devise_for :users

  root 'pints#index'

end
