Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  get 'login' => "auth#login"
  root "home#index"
end
