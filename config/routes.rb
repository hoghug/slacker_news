SlackerNews::Application.routes.draw do
  root 'posts#index'
  resources :posts do
    resources :comments
    resources :votes
  end
  resources :users
end
