Rails.application.routes.draw do
  resources :students, only: :index
	
  get 'students/new', to: 'students#new'
  get '/students/:id', to: 'students#show', as: 'dick'
  
  post '/', to: 'students#create', as: 'new'

end
