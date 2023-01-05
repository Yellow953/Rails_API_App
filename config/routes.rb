Rails.application.routes.draw do
  get 'results', to: 'result#index'
  post 'results/new', to: 'result#create'
  
  get 'subs', to: 'sub#index'
  post 'subs/new', to: 'sub#create'
end
