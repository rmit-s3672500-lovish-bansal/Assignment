Rails.application.routes.draw do
  
  
 root 'home#index'
  get 'register', to:'register#index'
  get 'contact', to:'contact_us#index'  
  # get 'category',to:'category#index'
  
  get 'signup', to: 'users#new'
  post 'signup',  to: 'users#create'
  
  
  get 'login',   to: 'sessions#new'
  post 'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  
  resources :users
  resources :courses
  resources :categories, except: :index
  resources :locations, except: :index
  
end