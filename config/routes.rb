Battlerap::Application.routes.draw do
  resources :users, only: [:create, :index, :show] do
    resources :battles, only: [:index]
  end
  
  resources :battles, only: [:create, :index, :show] do
    resources :verses, only: [:create, :index]
  end
  
  resources :verses, only: [:index]
  
end
