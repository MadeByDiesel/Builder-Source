Rails.application.routes.draw do
  
  resources :jobs

  devise_for :posters
  devise_for :contractors
  root to: "static_pages#index"
  get "static_pages/index"
  get "signup", to: "static_pages#sign_up"


  get 'contractor/:id' => 'contractors#show', as: :contractor
  get 'poster/:id' => 'posters#index', as: :poster

end
