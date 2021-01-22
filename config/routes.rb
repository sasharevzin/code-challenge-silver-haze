Rails.application.routes.draw do
  # NOTE: I can have it under `/api` namespace but I think it's fine
  resources :users, only: :index do
    resource :medical_recommendations, :state_ids, only: %i(create update destroy)
  end
end
