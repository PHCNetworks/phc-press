$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcpress/version"

# Gem and Engine Specifications
Gem::Specification.new do |spec|

	spec.name        = "phcpress"
	spec.version     = Phcpress::VERSION
	spec.authors     = ["BradPotts"]
	spec.email       = ["developers@phcnetworks.net"]
	spec.homepage    = "https://www.phcnetworks.net/"
	spec.summary     = "News & Blog Posts Engine"
	spec.description = "PHCPress(3) is a basic open source news & blog engine."
	spec.license     = "GPL-3.0"

	spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

	# Main Dependencies
	spec.add_dependency 'rails', '~> 4.2', '>= 4.2.6'
	spec.add_dependency 'responders', '~> 2.2'
	spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
	spec.add_dependency 'phcnotifi', '~> 2.7', '>= 2.7.1'
	spec.add_dependency 'phctitleseo', '~> 2.5', '>= 2.5.1'
	spec.add_dependency 'authrocket', '~> 2.0', '>= 2.0.1'
	spec.add_dependency 'pg', '~> 0.18.4'

	# Upload & Media Dependencies
	spec.add_dependency 'carrierwave', '~> 0.11.2'
	# UI & Frontend Elements
	spec.add_dependency 'jquery-rails', '~> 4.1', '>= 4.1.1'
	spec.add_dependency 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'
	spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	spec.add_dependency 'font-awesome-rails', '~> 4.6', '>= 4.6.3.1'
	spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.5'

	# API and Rabl
	spec.add_dependency 'oj', '~> 2.16', '>= 2.16.1'
	spec.add_dependency 'rabl', '~> 0.12.0'

	# Development & Testing Dependencies
	spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
	spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.3'

	spec.add_development_dependency 'factory_girl_rails', '~> 4.7'
	spec.add_development_dependency 'rspec-rails', '~> 3.5'
	spec.add_development_dependency 'capybara', '~> 2.7', '>= 2.7.1'

	spec.add_development_dependency 'better_errors', '~> 2.1', '>= 2.1.1'
	spec.add_development_dependency 'binding_of_caller', '~> 0.7.2'

	spec.add_development_dependency 'faker', '~> 1.6', '>= 1.6.3'
	spec.add_development_dependency 'selenium-webdriver', '~> 2.53', '>= 2.53.4'

end
