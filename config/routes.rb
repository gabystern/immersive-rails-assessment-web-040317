Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/guests' => 'guests#index'
  get '/guests/:id' => 'guests#show', as: 'guest'


  get '/episodes' => 'episodes#index'
  get '/episodes/:id' => 'episodes#show', as: 'episode'

  get '/sessions/new' => 'sessions#new', as: 'login'
  post '/sessions/new' => 'sessions#create'
  get '/sessions' => 'sessions#index'
  delete '/sessions' => 'sessions#destroy', as: 'logout'

  get '/appearances/new' => 'appearances#new'
  post '/appearances/new' => 'appearances#create'
  get '/appearances/:id' => 'appearances#show', as: 'appearance'
end
