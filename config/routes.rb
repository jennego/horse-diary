Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get('/about', { to: 'welcome#about', as: :about })
  resources :posts
  resources :horses
  resources :users
  resource :session, only:[:new]
  root 'welcome#index'

end
