Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'registrations'
      }
  

  resources :sun_glasses
  
  root 'store#index'
end
