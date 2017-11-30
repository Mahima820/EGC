Rails.application.routes.draw do
 # resources :carts
  devise_for :users
  get 'profile' => 'users#profile', as: :profile
  post 'jobs/:job_id/apply' => 'applied_jobs#create', as: :apply_to_job
  resources :applied_jobs, only: [:index, :create]
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post '/applied_jobs/:id', to: 'jobs#show'
  #when login is clicked on hompate --> takes you to login page
end
