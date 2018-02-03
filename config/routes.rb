Rails.application.routes.draw do
  resources :topics, only:[:index,:new,:create,:edit,:update, :destroy] do
  end

 get "/" => "topics#index"

  resources :contacts, only:[:new,:create] do
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# get 'topics/index'
# get 'contacts/new'
