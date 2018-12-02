Rails.application.routes.draw do
  root "pages#home"
  #root "offers#index"
  devise_for :users
  resources :companies, :offers, :users
  resources :categories, only: [:show]
  get "/offers/:id/new", to: "offers#new"

  get "/search", to: "companies#search", as: "search_page"
end
