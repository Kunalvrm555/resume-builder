Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  get    'signup'  => 'users#new'
  post   'signup'  => 'users#create'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :projects , only: [:new]
  resources :users , except: [:new]
end
