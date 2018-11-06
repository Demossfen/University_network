Rails.application.routes.draw do
  root 'home#index' 
  resources :faculties
  resources :teachers
  resources :groups
  resources :specialties
  devise_for :employers
  resources :employers
  resources :companies
  resources :projects
  resources :subjects
  resources :universities
  resources :cities
  devise_for :students
  devise_scope :students do
    get 'sign_in', to: 'devise/sessions#new'
  end
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
