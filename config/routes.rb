Rails.application.routes.draw do
  get 'contacts/create'
  #get 'contacts/new'
  get 'favorites/index'
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  root to: "posts#index"
  resources :favorites
  resources :profiles
  resources :posts
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
