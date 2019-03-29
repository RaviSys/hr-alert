Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  get 'login' => "auth#login"
  root "home#index"

  namespace :user do 
    get 'dashboard' => 'dashboard#index'
    get 'profile_edit' => 'profile#edit'
    patch 'profile_update' => 'profile#update_account'
    resources :companies, path: :company
  end

end
