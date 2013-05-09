Musicgenius::Application.routes.draw do
  root :to => "bands#index"
  resources :bands

end