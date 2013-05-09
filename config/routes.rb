Musicgenius::Application.routes.draw do
  root :to => "bands#index"
  resources :bands do
    collection do
      get 'search'
    end
  end
  resources :albums
  resources :songs
  resources :tracks
  resources :artists
end