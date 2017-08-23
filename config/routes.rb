Rails.application.routes.draw do
  
  # all routes 
  resources :profiles
  resources :materials
  resources :connections
  resources :assoziations
  resources :sections
  resources :lectures
  resources :categories
  resources :courseofstudies
  resources :studytypes
  resources :faculties
  resources :images
  
  # change the default routes at devise
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
