Phcpress::Engine.routes.draw do

	# Frontend
	namespace :frontend do
		resources :articles
	end
  
	# API
	namespace :api do
		namespace :v1 do
			resources :posts, defaults: {format: 'json'} 
			resources :categories, defaults: {format: 'json'}
		end
	end

	# Article Routes
	namespace :articles do
		resources :posts, class_name: 'Phcpresspro::Articles::Post'
	end

	# Module Routes
	namespace :modules do
		resources :connections, class_name: 'Phcpresspro::Modules::Connection'
		resources :categories, class_name: 'Phcpresspro::Modules::Category'
	end

end
