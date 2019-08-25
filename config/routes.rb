Rails.application.routes.draw do
  resources :controllers
  get 'organisations/index'
  get 'organisations/delete'
  root to: 'people#index'
  resources :people do
    resources :organisations
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
