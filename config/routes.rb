Rails.application.routes.draw do
  get 'home/index'

  get 'home/chat'

  post 'home/join'
  post 'home/leave'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
