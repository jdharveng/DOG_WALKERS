Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dogs do
    resources :walks, except: [:index]
  end

  resources :walks, only: [:index]

  get :mydogs, to: 'dogs#mydogs'

end
