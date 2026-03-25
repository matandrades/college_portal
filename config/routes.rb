Rails.application.routes.draw do
  namespace :admin do
    resources :hubs
  end
end
