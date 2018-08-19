Rails.application.routes.draw do
  devise_for :users
	root to: "pages#home"

  resources :tweets, only: :create	
  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :destroy]

end
