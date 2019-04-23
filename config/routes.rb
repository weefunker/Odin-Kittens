Rails.application.routes.draw do
  get 'kittens/new'
  get 'kittens/edit'
  get 'kittens/show'

  
  resources :kittens

 
  root to: 'kittens#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
