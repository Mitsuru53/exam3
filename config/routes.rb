Rails.application.routes.draw do

  get 'relationships/create'

  get 'relationships/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,controllers:{
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :users, only: [:index]
  resources :relationships, only: [:create, :destroy]

  resources :topics do
    resources :comments
    collection do
      post :confirm
    end
  end

  resources :conversations do
    resources :messages
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
# etter_opener"
#   end
# end
