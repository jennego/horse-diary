Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get('/about', { to: 'welcome#about', as: :about })
  resources :posts
  get('/calendar', {to: 'calendar#index', as: :calendar})
  resources :horses do
    resources :logs
  end
       get'/horses/:id/posts', {to: 'horses#posts', as: :post_by_horse}
       get'/horses/:id/reminders', {to: 'horses#reminders', as: :reminders_by_horse}


  resources :reminders
  resources :users
  resources :weather, only:[:index]
  resource :session, only:[:new]

  authenticated :user do
    root 'users#dashboard', as: :authenticated_root
  end
  root 'welcome#index'

end
