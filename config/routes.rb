Rails.application.routes.draw do
 resources :sites, , only: [:index, :show, :create, :update, :destroy]
 resources :events, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'events#index'
	get '/:id' => "events#show"
	post '/' =>  "events#create"
	get '/view/my_events' => 'events#my_events'
	get '/view/events_site/:site_id' => 'events#events_site'
end
