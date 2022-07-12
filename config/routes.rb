Rails.application.routes.draw do
  resources :test do
    get :pokemon, on: :collection
  end
end
