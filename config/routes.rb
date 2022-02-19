Rails.application.routes.draw do
<<<<<<< HEAD
  get     'users'            => 'users#index'
  get     'users/show/:id'   => 'users#show', as: :user_show
  get     'users/new'        => 'users#new'
  post    'users'            => 'users#create'
  get     'users/edit'       => 'users#edit'
  put     'users'            => 'users#update'
  delete  'users'            => 'users#destroy'
=======
  resources :users

  get     'users'       => 'users#index'
  get     'users/:id'   => 'users#show' 
  get     'users/new'   => 'users#new'
  post    'users'       => 'users#create'
  get     'users/edit'  => 'users#edit'
  put     'users'       => 'users#update'
  delete  'users'       => 'users#destroy'
>>>>>>> refs/remotes/origin/main
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
