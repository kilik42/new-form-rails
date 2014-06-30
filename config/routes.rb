Rails.application.routes.draw do
  get '/user/:id' =>'application#show'
  
  get '/new_fm' => 'application#new'
 
  get '/create_stuff' => 'application#create'
end
