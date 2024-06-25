Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"  # ルートパスを/postsに設定する場合はコメントアウトを解除してください

  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
end
