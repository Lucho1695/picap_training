Rails.application.routes.draw do
  resources :test do
    get :pokemon, on: :collection
  end

  resources :computers do
    get :index, on: :collection
    post :create, on: :collection
  end

  resources :bookings 
  
end
