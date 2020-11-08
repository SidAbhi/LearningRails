Rails.application.routes.draw do
  get 'pages/index'
  get 'page/index'
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :articles, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
