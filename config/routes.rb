Rails.application.routes.draw do

  root to: 'home#index'

  get 'login',       to: 'sessions#new',      as: :login

  resource :session, only: [:create]

  resources :budgets do
    resources :activities
  end

  resources :kinds
end
