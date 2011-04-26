Rails.application.routes.draw do
  namespace :manage do
    resources :structures do
      resources :posts
    end
  end
end
