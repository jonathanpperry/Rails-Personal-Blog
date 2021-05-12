Rails.application.routes.draw do
  devise_for :authors
  get 'about/index'
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
  end
end
