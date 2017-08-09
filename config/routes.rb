Rails.application.routes.draw do
  get 'livros/index'

  root 'livros#index'

  resources :livros
end
