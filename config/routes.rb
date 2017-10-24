Rails.application.routes.draw do
  resources :places

 resources :events, only: [:index, :show, :create, :update, :destroy, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'events#index'
	get '/:id' => "events#show"
	post '/' =>  "events#create"
	get '/events/owner/:owner_id' => 'events#events_by_owner'
	get '/events/place/:place_id' => 'events#events_by_place'
  delete '/events' => 'events#destroy_by_name'

 #match "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
 # global options responder -> makes sure OPTION request for CORS endpoints work
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}

end
