Rails.application.routes.draw do
  get 'song/genre'
  get 'song/popularity'
  get 'song/index'
  get 'song/show'
  get 'band_member/index'
  get 'band_member/show'
  get 'band/show'
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :band, only: [:index, :show]
  resources :song, only: [:index, :show] do
    member do
      post :mark_as_favourite
    end
    collection do
      post :clear_favourites
    end
  end
  
  root to: 'band#index'
end
