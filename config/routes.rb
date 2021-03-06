Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  resources :direct_messages

  root "chatrooms#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
