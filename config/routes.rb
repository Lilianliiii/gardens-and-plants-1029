Rails.application.routes.draw do
  resources :gardens do
    resource :plants, only: :create
  end

  resources :plants, only: :destroy do
    resource :plant_tags, only: [:new, :create]
  end
end
