Rails.application.routes.draw do

  devise_for :users
  unauthenticated do
    devise_scope :user do
      root to: 'home#index', as: 'home'
    end
  end
  authenticated :user do
    devise_scope :user do
      root to: 'feeds#index', as: 'feed'
    end
  end
end
