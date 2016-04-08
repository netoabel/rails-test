Rails.application.routes.draw do
  root 'ads#index'
  get 'new_ad' => 'ads#new'
  resources :ads
end