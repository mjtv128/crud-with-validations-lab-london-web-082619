Rails.application.routes.draw do
  root 'songs#index'
  get '/songs', to: 'songs#index', as: 'songs'
  post '/songs', to: 'songs#create'
  get '/songs/new', to: 'songs#new', as: 'new_song'
  get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  get '/songs/:id', to: 'songs#show', as: 'song'
  patch '/songs/:id', to: 'songs#update'
  delete '/songs/:id', to: 'songs#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
