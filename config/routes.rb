Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: %i[index show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: %i[index]
  end
end
