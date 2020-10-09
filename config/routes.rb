Rails.application.routes.draw do
  get 'welcome/index'
  root 'teachers#index'

  resources :students do
  end
  resources :teachers do
  end
end


