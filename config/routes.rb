Rails.application.routes.draw do
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/about' => "homes#about"
  devise_for :users
  resources :books
  resources :users

end
