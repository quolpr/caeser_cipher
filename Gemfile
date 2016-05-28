source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Backbone
gem "rails-backbone"

# Responders
gem 'responders'

# Friendly url
gem 'friendly_id'

# Model serializing
gem 'active_model_serializers'

# Js templates
gem 'eco'

group :development, :test do
  # All for testing
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Model annotating
  gem 'annotate'

  # Rspec + spring
  gem 'spring-commands-rspec'

  # For clean code
  gem 'rubocop', require: false
  gem 'guard-rubocop', require: false

  # Automating running test after save
  gem 'guard-rspec', require: false
end

group :test do
  # All for testing
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'codecov', :require => false
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'selenium-webdriver'
end
