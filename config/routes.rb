Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get('/about', { to: 'welcome#about', as: :about })
  resources :posts
  get('/calendar', {to: 'calendar#index', as: :calendar})
  resources :horses
  resources :reminders
  resources :users
  resource :session, only:[:new]

  authenticated :user do
    root 'users#dashboard', as: :authenticated_root
  end
  root 'welcome#index'

end
