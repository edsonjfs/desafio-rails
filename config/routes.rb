Rails.application.routes.draw do
  resources :users

  get     'users'       => 'users#index'
  get     'users/:id'   => 'users#show' 
  get     'users/new'   => 'users#new'
  post    'users'       => 'users#create'
  get     'users/edit'  => 'users#edit'
  put     'users'       => 'users#update'
  delete  'users'       => 'users#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
