module Phcpress
	class Engine < ::Rails::Engine

		# Load UI Dependecies
		require 'jquery-rails'
		require 'phcnotifi'

		require 'sass-rails'
		require 'bootstrap-sass'
		require 'font-awesome-rails'
		
		# Load Image Processing
		require 'carrierwave'

		# Give Everything a Namespace
		isolate_namespace Phcpress

		# Testing Generator
		config.generators do |g|
			g.test_framework :rspec,
				fixtures: true,
				view_specs: false,
				helper_specs: false,
				routing_specs: false,
				controller_specs: true,
				request_specs: false
			g.fixture_replacement :factory_girl, dir: "spec/factories"
		end
	
		# Load Helper Files
		config.to_prepare do
			ApplicationController.helper(ApplicationHelper)
			ApplicationController.helper(Blog::PostsHelper)
			ApplicationController.helper(News::PostsHelper)
		end

	end
end
