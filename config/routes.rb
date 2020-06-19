Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

 # get '/admin/stats', to: 'stats#index'
<<<<<<< HEAD
 namespace :admin do 
=======
 scope '/admin', module: 'admin' do 
>>>>>>> 8c351ee60e3077030b8f5de76800c1d56235e4ad
   resources :stats, only: [:index]
   
  get '/stats' , to: 'stats#index'
  
  get '/admin/authors/new', to: 'authors#new'
  get '/admin/authors/delete', to: 'authors#delete'
  get '/admin/authors/create', to: 'authors#create'
  get '/admin/comments/moderate', to: 'comments#moderate'

  root 'posts#index'
end
