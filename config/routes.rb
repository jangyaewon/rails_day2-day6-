Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  get '/home/index' => 'home#index'  #/home/index을 받으면 home콘트롤러의 index로 가라
#  post'/home/index' => 'home#create'
  root 'home#index'
#  get '/lotto' => 'home#lotto'
  get '/lunch' => 'home#lunch'
  
  get '/users' => 'user#index'
  get '/user/new' => 'user#new'
  get '/user/:id' => 'user#show' #:id의 위치에 아무것이나 들어가도 되다보니 new를 넣어도 에러가 날 수 있으니 위치가 중요하다.
  post '/user/create' => 'user#create'
  
  get 'lotto' => 'lotto#index'
  get 'lotto/new' => 'lotto#new'
  
  get 'lotto2' => 'lotto2#index'
  get 'lotto2/new' => 'lotto2#new'

  get '/ask' => 'ask#index'
  get '/ask/new' => 'ask#new'
  
  get '/ask2' => 'ask2#index'
  get '/ask2/new' => 'ask2#new'
  post '/ask2/create' => 'ask2#create'
  get '/ask2/:id' => 'ask2#show'
  get '/ask2/:id/delete' => 'ask2#delete'
  get '/ask2/:id/edit' => 'ask2#edit'
  post '/ask2/:id/update' => 'ask2#update'
end

