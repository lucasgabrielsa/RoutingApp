Rails.application.routes.draw do

  namespace :admin do 
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  
  
  get 'about', to: 'pages#about'
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'
  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing'

  get 'query/:teste/:another_one', to: 'pages#something'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
