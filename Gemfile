source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# This plugin adds ActiveRecord models a way to prevent destroy if specified has_many, has_one and/or belongs_to associations are present
gem 'prevent_destroy_if_any'
# will_paginate is a pagination library that integrates with Ruby on Rails, Sinatra, Merb, DataMapper and Sequel.
gem 'will_paginate'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'bootstrap-sass'
gem 'font-awesome-rails', '4.3.0.0'

# Use postgresql as the database for Active Record
gem 'pg'
#  user authen
gem 'devise'
# Add a comment summarizing the current schema to the top or bottom of each of your models etc
gem 'annotate'
# Figaro parses a Git-ignored YAML file in your application and loads its values into ENV.
gem 'figaro'
# Add in-place editing to our application
gem 'best_in_place'
# Sucker Punch is a single-process Ruby asynchronous processing library
gem 'sucker_punch', '~> 2.0'
# Log outgoing mails
gem 'mail-logger'

gem 'simple_form'

# web server
gem 'unicorn'
gem 'unicorn-rails'

# gem to allow the duplication of associated child record objects when duplicating an active record model.
gem 'amoeba'

group :development do
  gem 'better_errors'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_layout'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :production do 
  gem 'rails_12factor'
end
