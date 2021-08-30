Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :products, only: %i[index show], shallow: true do
    resources :feedbacks, only: %i[create show]
  end

  resources :favorites, only: %i[index create destroy]
end
