Musicgenius::Application.routes.draw do
  root :to => "bands#index"
  resources :bands
  resources :albums
  resources :songs
  resources :tracks
end