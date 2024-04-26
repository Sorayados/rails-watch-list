Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: %i[show new create]
  end
  resources :bookmarks, only: :destroy
  # Defines the root path route ("/")
  # root "posts#index"
end
