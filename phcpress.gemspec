$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "phcpress/version"

# Gem and Engine Specifications
Gem::Specification.new do |s|

	s.name        = "phcpress"
	s.version     = Phcpress::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["brad.potts@phcnetworks.net"]
	s.homepage    = "http://www.phcnetworks.net"
	s.summary     = "News & Blog Posts Engine for Ruby on Rails"
	s.description = "A customizable engine for simple news and blog posts."
	s.license     = "MIT"

	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

	# Production Dependencies
	s.add_dependency 'pg', '~> 0.18.4'
	s.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'

	# UI and Frontend Elements
	s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	s.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	s.add_dependency 'font-awesome-rails', '~> 4.5'
	s.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	s.add_dependency 'rolify', '~> 5.0'
	s.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

	# Development Dependencies
	# s.add_dependency 'pry'
	# s.add_dependency 'pry-nav'

	s.add_development_dependency 'minitest'
	s.add_development_dependency 'simplecov'
	s.add_development_dependency 'coveralls'

	s.add_development_dependency 'mailcatcher'
	s.add_development_dependency 'sqlite3'
	s.add_development_dependency 'database_cleaner'
	s.add_development_dependency 'shoulda-matchers'
	s.add_development_dependency 'factory_girl'
	s.add_development_dependency 'rspec-rails'
	s.add_development_dependency 'capybara'

	s.add_development_dependency 'quiet_assets'
	s.add_development_dependency 'letter_opener'
	s.add_development_dependency 'pry'

end
