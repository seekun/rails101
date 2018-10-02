Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
  root 'groups#index'
  namespace :account do
    resources :groups
    # resource :posts
    # 报错, 找不到对应的method
    resources :posts
  end
end