Rails.application.routes.draw do
  root 'teachers#index'

  resources :teachers
  resources :students
end
