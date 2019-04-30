Rails.application.routes.draw do
  get 'dashboard/index'
  resources :meetings
  root 'landing#index'
  devise_for :usuarios, controllers: {registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
