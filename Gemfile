source 'https://rubygems.org'
ruby '2.0.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem "letter_opener"
  gem 'guard-spork'
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'rb-fsevent'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec-expectations', '~> 3.0.2'
  gem 'factory_girl_rails'
  gem 'sqlite3'
  gem 'guard-rspec'
end

group :test do
  gem 'rspec-mocks', '~> 3.0.2'
  gem 'faker'
  gem "database_cleaner"
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem "selenium-webdriver"
end

gem 'impressionist'
gem 'devise'
gem "haml"
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'twitter-bootstrap-rails'
gem 'simple_form', github: 'plataformatec/simple_form'

gem 'mini_magick', '3.5.0'

gem 'carrierwave'

gem 'anjlab-bootstrap-rails', '~> 3.0.0.3', :require => 'bootstrap-rails'
gem 'active_link_to'
gem 'countries'
gem 'country_select'

gem 'activeadmin', github: 'gregbell/active_admin'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem "spring",     group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

