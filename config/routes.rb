Rails.application.routes.draw do
  root :to => 'users#new'
  resources :questions do
    resources :answers, :only => :new
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
