Rails.application.routes.draw do
  get 'songs/new'

  get 'songs/create'

  get 'songs/update'

  get 'songs/show'

  get 'songs/edit'

  get 'genres/new'

  get 'genres/create'

  get 'genres/update'

  get 'genres/show'

  get 'genres/edit'

  get 'artists/new'

  get 'artists/create'

  get 'artists/update'

  get 'artists/show'

  get 'artists/edit'

resources :artists
resources :genres
resources :songs
end
