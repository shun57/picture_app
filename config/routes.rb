Rails.application.routes.draw do
  root "pictures#index"
  resources :pictures do
    collection do
      post :confirm
    end
  end
  devise_for :users
  resources :users, :only => [:show]
  resources :favorites, only:[:create,:destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
