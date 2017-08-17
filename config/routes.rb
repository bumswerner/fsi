Rails.application.routes.draw do
  resources :connections
  resources :lectures
  resources :assoziations
  resources :categories
  resources :coursetypes
  resources :courses
  resources :lecture_categories
  resources :faculties
  resources :images
  devise_for :users
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
