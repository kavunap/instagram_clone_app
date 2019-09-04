Rails.application.routes.draw do
  devise_for :users
  get 'contacts/create'
  #get 'contacts/new'
  #get 'favorites/index'
  #get 'favorites/create'
  #get 'favorites/destroy'
  root to: "posts#index"
  resources :favorites
  resources :profiles
  #resources :posts
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
