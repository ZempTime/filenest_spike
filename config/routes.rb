Rails.application.routes.draw do

  resources :drops do
    resources :uploads
  end

  root to: "drops#index"
end
