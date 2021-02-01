Rails.application.routes.draw do
  
  get 'scn/index'

  get 'scn/show'

  

  get 'pages/index'

  get 'pages/show'

  get 'pages/new'

  get 'pages/edit'

  get 'pages/delete'

  get 'pages/form'

  

  get 'dummy/index'

  get 'dummy/show'

  get 'dummy/new'

  get 'dummy/edit'

  get 'dummy/delete'

  get 'dummy/login'

 root 'dummy#index' 
 #get 'view/:weblink', :to => 'public#view'
 #get 'admin',:to=>"access#index"
 match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]
 #post "sign_in" => "authentication#login"
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
