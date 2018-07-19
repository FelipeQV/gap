Rails.application.routes.draw do



  get 'users/show'

  devise_for :users


  resources :users do
resources :cars, shallow: true do
  resources :appointments, shallow: true
end
end



  root to: 'pages#home'

  get '/home' => 'static_pages#home'
  get '/about' => 'static_pages#about'
  get '/help' => 'static_pages#help'
  get '/contact' => 'static_pages#contact'
  get '/terms' => 'static_pages#terms'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
