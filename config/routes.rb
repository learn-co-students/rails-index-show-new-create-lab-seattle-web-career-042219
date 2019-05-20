Rails.application.routes.draw do
resources :coupons, only: [:show, :new, :index, :create]
end
