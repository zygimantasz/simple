Rails.application.routes.draw do

  root "demo#index"

  # All REST controller routes
  resource :subjects do
    member do
      get :delete
    end
  end


  get 'index/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
