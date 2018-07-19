Rails.application.routes.draw do



  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/terms'

  devise_for :users


  resources :users do
resources :cars, shallow: true do
  resources :appointments, shallow: true
end
end



  root to: 'pages#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
