Rails.application.routes.draw do
  root 'teachers#index'

  resources :teachers do
  end
end
