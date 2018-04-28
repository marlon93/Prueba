Rails.application.routes.draw do

  resources :municipios_regiones
  resources :regiones
  resources :municipios
  
  root 'municipios#index'

end
