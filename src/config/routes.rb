Rails.application.routes.draw do
  root 'home#index'
  resources :respostas
  resources :questoes
  resources :materias
  get 'gerenciamento', to: 'home#gerenciamento', as: 'gerenciamento'
  get 'resultados', to: 'home#resultados', as: 'resultados'
  post 'enviar_formularios', to: 'home#enviar_formularios', as: 'enviar_formularios'
  resources :materia
  resources :questaos
  resources :formularios
  resources :resposta
  resources :turmas
  resources :imports, only: [:create]
  devise_for :users  
  resources :templates
end