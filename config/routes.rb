Rails.application.routes.draw do
  resources :reviews
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end