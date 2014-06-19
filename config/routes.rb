Rails.application.routes.draw do

  root to: 'static_pages#index'

  get 'static_pages/index'
  get 'sign_up', to: 'static_pages#sign_up'

  devise_for :posters
  devise_for :contractors
  
  #devise_scope :contractor do
  #  get 'sign_in', to: 'devise/sessions#new'
  #end

  #devise_scope :poster do
  #  get 'sign_in', to: 'devise/sessions#new'
  #end

  resources :posters
  resources :contractors
  resources :jobs

  #get 'contractor/:id' => 'contractors#show', as: :contractor
  #get 'poster/:id' => 'posters#show', as: :poster
end
