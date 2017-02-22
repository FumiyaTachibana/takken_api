source 'https://rubygems.org'

gem 'rails', '5.0.1'

gem 'mysql2'

gem 'enumerize'

gem 'airbrake'

gem 'settingslogic'

gem 'kaminari'

gem 'seed-fu'

gem 'grape'
gem 'grape-entity'

gem 'grape-swagger'
gem 'rack-cors', :require => 'rack/cors'

gem 'devise'

gem 'ransack', github: 'activerecord-hackery/ransack'

# assets
gem 'coffee-rails'
gem 'sass-rails'
gem 'therubyracer', platforms: :ruby
gem 'uglifier'

# jquery
gem 'jquery-rails'
gem 'jquery-ui-rails'

# rails-assets.org
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-bootstrap-datepicker'
end

group :development do

  gem 'annotate'
  gem 'bullet'
  gem 'listen', '~> 3.1.5'
  gem 'rack-mini-profiler'
  gem 'rails-erd'
  gem 'thin'


  gem 'hirb'
  gem 'hirb-unicode'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv', github: 'capistrano/rbenv'
  gem 'capistrano-bundler'

  # static code analysis
  gem 'brakeman'
  gem 'metric_fu'
  gem 'rails_best_practices'
  gem 'rubocop', require: false
  gem 'rubocop-checkstyle_formatter', require: false

  # websocket test
  gem 'faye'
end

group :development, :test do
  gem 'awesome_print'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'spring'
  gem 'web-console'

  # debug
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
end

group :test do
  gem 'database_cleaner'
  gem 'fuubar'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc'
end