Rails.application.routes.draw do
  resources :restaurants do #, except: :delete
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
end

# get '/restaurants', to: 'restaurants#index'

# get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurants'
# post '/restaurants', to: 'restaurants#create'

# get '/restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
# patch '/restaurants/:id', to: 'restaurants#update'

# get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'

# delete '/restaurants/:id', to: 'restaurants#destroy', as: 'destroy_restaurants'
