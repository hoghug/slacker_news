SlackerNews::Application.routes.draw do
  root 'users#index'
  resources :users do
    resources :posts do
      resources :comments
      resources :votes
    end
  end
end
