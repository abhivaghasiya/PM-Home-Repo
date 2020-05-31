Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users


  # get 'admin_dashboard', to: 'pages#admin_dashboard', as: :current_user
  get 'calender', to: 'pages#calender', as: :calender
  resources :notes
  resources :projects_users
  resources :users
  resources :tasks

  resources :projects do
    resources :tasks do
      resources :notes
    end
  end

  resources :projects do
    member do
      put :active
      put :deactive
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
