Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/create'
  get 'comments/destroy'
  get 'comments/new'
  root 'images#index'
  resources :images, only: [:create, :show] do
    resources :comments
  end
  get 'profile' => 'profile#show'
  devise_for :users
  resources :users, only: [:show]
  # get 'users/:id' => 'users#show', as: :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
