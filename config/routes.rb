Rails.application.routes.draw do
  resources :topics, only:[:index,:new,:create,:edit,:update, :destroy]
  # get 'topics/index'

   get "/" => "topics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
