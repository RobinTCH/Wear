Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :products, only: [:index, :show ], shallow: true do
    resources :feedbacks, only: [:new, :create, :show]
  end
end

# (nester dans products) ressources :favorites, only: [:index, :create, :destroy]
  # if Users.admin? = true can create / edit product

# (nester products dans brands) -- ressources :brands do
  # if Users.admin? = true can create / edit product
  # ressources :products

# search bar partout ?? pour avoir acces a la show de brand
