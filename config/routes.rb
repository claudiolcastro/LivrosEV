Rails.application.routes.draw do
  resources :estanteevs
  get 'livros/index'

  root 'livros#index'

  resources :livros
end
