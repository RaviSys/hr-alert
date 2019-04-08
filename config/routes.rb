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
    resources :companies, path: :company do 
      member do 
        get :edit_address_info
        patch :update_address_info
        get :edit_social_info
        patch :update_social_info
      end
    end
    resources :job_posts do 
      member do 
        patch :publish_job_post
      end
    end
    resources :contacts do 
      member do 
        post :send_email_to_contactee
      end
    end
  end

  resources :companies
  resources :job_posts, path: :jobposts
  resources :contacts

end
