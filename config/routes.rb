Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root 'homes#index'

  # LINE Login
  devise_scope :user do
    get '/users/auth/line', to: 'users/omniauth_callbacks#line'
    get '/users/auth/line/callback', to: 'users/omniauth_callbacks#line'
  end
end
