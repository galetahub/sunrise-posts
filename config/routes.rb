Rails.application.routes.draw do
  namespace :manage do
    scope 'structures/:structure_id' do
      resources :posts
    end
  end
end
