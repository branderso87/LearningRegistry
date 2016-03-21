Rails.application.routes.draw do
  get '/verify', to: 'sessions#new'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/sessions/current', to: 'sessions#current'

  resources :approvals, only: %i(new create)

  root 'sessions#new'
end
