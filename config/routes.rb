Rails.application.routes.draw do
  root to: "islands#index"
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :islands, only: ['new', 'create', 'index', 'show', 'edit', 'update', 'destroy'] do
    collection do
      get :index_by_user
    end

    resources :bookings, only: :create
  end

  resources :bookings, only: :show do
    collection do
      get :index_by_user
    end
  end

end
