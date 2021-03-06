Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about" , as: "about"
  resources :posts do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
