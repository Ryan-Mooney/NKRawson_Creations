Rails.application.routes.draw do
  resources :tests
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: [:new, :create]
  get 'contact-us', to: 'contacts#new'
end
