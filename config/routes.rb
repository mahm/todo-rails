Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :tasks do
      post :done
    end
  end

  devise_for :users
  root to: 'tasks#index'
end
