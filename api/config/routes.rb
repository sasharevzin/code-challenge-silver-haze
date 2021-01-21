Rails.application.routes.draw do
  # NOTE: I can have it under `/api` namespace but I think it's fine
  resources :users, only: :index do
    resources :medical_recommendations, :state_ids
  end
end
