Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  resources :bookmarks, only: [:destroy]
end
