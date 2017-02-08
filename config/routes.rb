Rails.application.routes.draw do

  resources :cards
  #necessário para gerar as rotas no 'rails routes'

  root to: 'cards#index' #gera prefixo (visualizar no rails routes)
  #get '/', to: 'cards#index'
  # get('/', to: 'cards#index') 2 parametros no metodo -> string e um hash
end
