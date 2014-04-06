MusicMap::Application.routes.draw do
  
  resources :maps, only: [:index] do
  end
  
  root :to => 'maps#index'
    
end
