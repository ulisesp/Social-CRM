source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'
gem "therubyracer", :require => 'v8'
gem 'activesupport', '3.1.0'
gem 'mysql2'
#gem 'pg'

gem 'slim'

gem 'heroku'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

gem "rspec-rails", ">= 2.6.1", :group => [:development, :test]
gem "factory_girl_rails", ">= 1.1.0", :group => :test
gem "cucumber-rails", ">= 1.0.2", :group => :test
gem "capybara", ">= 1.0.1", :group => :test
gem "database_cleaner", ">= 0.6.7", :group => :test
#gem "launchy", ">= 2.0.5", :group => :test
gem "devise", ">= 1.4.4"
gem "slim-rails"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :development do
  gem 'sqlite3'
  gem 'guard'
  #gem 'rb-fsevent'
  #gem 'growl_notify'
  gem 'guard-livereload'
  #gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
